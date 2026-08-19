package com.rkkvishva.nothing_dialer

import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Outline
import android.graphics.Path
import android.graphics.RectF
import android.graphics.Region
import android.net.Uri
import android.os.Build
import android.provider.ContactsContract
import android.view.View
import android.view.ViewOutlineProvider
import android.widget.FrameLayout
import kotlin.math.cos
import kotlin.math.min
import kotlin.math.sin

object ContactPhotoHelper {
    const val MODE_OFF = "off"
    const val MODE_AVATAR = "avatar"
    const val MODE_FULLSCREEN = "fullscreen"
    const val STYLE_NORMAL = "normal"
    const val STYLE_NOTHING = "nothing"

    fun getPhotoMode(context: Context): String =
        FlutterPrefs.getString(context, "contact_photo_mode") ?: MODE_AVATAR

    fun getAvatarShape(context: Context): String =
        when (val shape = FlutterPrefs.getString(context, "contact_avatar_shape")) {
            "square" -> "rounded_square"
            "pixel_circle" -> "circle"
            null -> "circle"
            else -> shape
        }

    fun getAvatarStyle(context: Context): String {
        val storedStyle = FlutterPrefs.getString(context, "contact_avatar_style")
        if (storedStyle == STYLE_NOTHING) return STYLE_NOTHING
        if (FlutterPrefs.getString(context, "contact_avatar_shape") == "pixel_circle") {
            return STYLE_NOTHING
        }
        return STYLE_NORMAL
    }

    fun shouldShowPhotos(context: Context): Boolean =
        getPhotoMode(context) != MODE_OFF

    fun isFullscreenMode(context: Context): Boolean =
        getPhotoMode(context) == MODE_FULLSCREEN

    fun loadContactPhotoUri(context: Context, phoneNumber: String): Uri? {
        val lookupBaseUri = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            ContactsContract.PhoneLookup.ENTERPRISE_CONTENT_FILTER_URI
        } else {
            ContactsContract.PhoneLookup.CONTENT_FILTER_URI
        }
        val lookupUri = Uri.withAppendedPath(
            lookupBaseUri,
            Uri.encode(phoneNumber),
        )
        val projection = arrayOf(
            ContactsContract.PhoneLookup.PHOTO_URI,
            ContactsContract.PhoneLookup._ID,
        )
        try {
            context.contentResolver.query(lookupUri, projection, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val photoIdx = cursor.getColumnIndex(ContactsContract.PhoneLookup.PHOTO_URI)
                    if (photoIdx != -1) {
                        val photoUri = cursor.getString(photoIdx)
                        if (!photoUri.isNullOrBlank()) return Uri.parse(photoUri)
                    }
                    val idIdx = cursor.getColumnIndex(ContactsContract.PhoneLookup._ID)
                    if (idIdx != -1) {
                        val id = cursor.getLong(idIdx)
                        return Uri.withAppendedPath(
                            ContentUris.withAppendedId(
                                ContactsContract.Contacts.CONTENT_URI,
                                id,
                            ),
                            ContactsContract.Contacts.Photo.DISPLAY_PHOTO,
                        )
                    }
                }
            }
        } catch (_: Exception) {
        }
        return null
    }

    fun loadBitmap(context: Context, uri: Uri, maxDimension: Int = 1440): Bitmap? {
        return try {
            val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            context.contentResolver.openInputStream(uri)?.use { stream ->
                BitmapFactory.decodeStream(stream, null, bounds)
            }

            var sampleSize = 1
            val largestDimension = maxOf(bounds.outWidth, bounds.outHeight)
            while (largestDimension / sampleSize > maxDimension * 2) {
                sampleSize *= 2
            }

            val options = BitmapFactory.Options().apply {
                inSampleSize = sampleSize
                inPreferredConfig = Bitmap.Config.ARGB_8888
            }
            context.contentResolver.openInputStream(uri)?.use { stream ->
                BitmapFactory.decodeStream(stream, null, options)
            }
        } catch (_: Throwable) {
            null
        }
    }

    /**
     * Reads the aggregate contact's selected photo. Querying through the
     * aggregate URI is important for linked contacts because individual raw
     * accounts can each contain a different photo.
     */
    fun loadContactPhotoBytes(
        context: Context,
        contactId: String,
        preferFullPhoto: Boolean,
    ): ByteArray? {
        val id = contactId.toLongOrNull() ?: return null
        val contactUri = ContentUris.withAppendedId(
            ContactsContract.Contacts.CONTENT_URI,
            id,
        )
        return try {
            ContactsContract.Contacts.openContactPhotoInputStream(
                context.contentResolver,
                contactUri,
                preferFullPhoto,
            )?.use { it.readBytes() }
                ?: if (preferFullPhoto) {
                    ContactsContract.Contacts.openContactPhotoInputStream(
                        context.contentResolver,
                        contactUri,
                        false,
                    )?.use { it.readBytes() }
                } else {
                    null
                }
        } catch (_: Throwable) {
            null
        }
    }

    fun saveContactPhoto(context: Context, contactId: String, photo: ByteArray): Boolean {
        if (contactId.isBlank() || photo.isEmpty()) return false

        val rawContacts = mutableListOf<Pair<Long, String>>()
        try {
            val projection = arrayOf(
                ContactsContract.RawContacts._ID,
                ContactsContract.RawContacts.ACCOUNT_TYPE,
            )
            val selection =
                "${ContactsContract.RawContacts.CONTACT_ID}=? AND " +
                    "${ContactsContract.RawContacts.DELETED}=0"
            context.contentResolver.query(
                ContactsContract.RawContacts.CONTENT_URI,
                projection,
                selection,
                arrayOf(contactId),
                null,
            )?.use { cursor ->
                val idIndex = cursor.getColumnIndexOrThrow(ContactsContract.RawContacts._ID)
                val typeIndex =
                    cursor.getColumnIndex(ContactsContract.RawContacts.ACCOUNT_TYPE)
                while (cursor.moveToNext()) {
                    val rawId = cursor.getLong(idIndex)
                    val accountType =
                        if (typeIndex >= 0) cursor.getString(typeIndex).orEmpty() else ""
                    rawContacts.add(rawId to accountType)
                }
            }
        } catch (_: Exception) {
            return false
        }

        rawContacts.sortByDescending { (_, accountType) ->
            writableAccountScore(accountType)
        }
        for ((rawId, _) in rawContacts) {
            try {
                val rawContactUri = ContentUris.withAppendedId(
                    ContactsContract.RawContacts.CONTENT_URI,
                    rawId,
                )
                val photoUri = Uri.withAppendedPath(
                    rawContactUri,
                    ContactsContract.RawContacts.DisplayPhoto.CONTENT_DIRECTORY,
                )
                val descriptor =
                    context.contentResolver.openAssetFileDescriptor(photoUri, "rw")
                        ?: continue
                descriptor.use {
                    it.createOutputStream().use { output ->
                        output.write(photo)
                        output.flush()
                    }
                }
                if (!markPhotoSuperPrimary(context, contactId, rawId)) {
                    // Let the Flutter fallback writer try if this provider did
                    // not expose a writable photo data row for the raw contact.
                    continue
                }
                context.contentResolver.notifyChange(
                    ContactsContract.Contacts.CONTENT_URI,
                    null,
                )
                return true
            } catch (_: Exception) {
                // Linked messaging and directory raw contacts are often read-only.
            }
        }
        return false
    }

    /**
     * Android aggregates linked raw contacts into one contact. Writing a
     * DisplayPhoto updates the chosen raw contact, but the aggregate can keep
     * exposing another linked account's old photo unless this row is selected
     * as the primary photo.
     */
    private fun markPhotoSuperPrimary(
        context: Context,
        contactId: String,
        rawContactId: Long,
    ): Boolean {
        val resolver = context.contentResolver
        val photoMimeType = ContactsContract.CommonDataKinds.Photo.CONTENT_ITEM_TYPE

        val clearValues = ContentValues().apply {
            put(ContactsContract.Data.IS_PRIMARY, 0)
            put(ContactsContract.Data.IS_SUPER_PRIMARY, 0)
        }
        resolver.update(
            ContactsContract.Data.CONTENT_URI,
            clearValues,
            "${ContactsContract.Data.CONTACT_ID}=? AND " +
                "${ContactsContract.Data.MIMETYPE}=?",
            arrayOf(contactId, photoMimeType),
        )

        val primaryValues = ContentValues().apply {
            put(ContactsContract.Data.IS_PRIMARY, 1)
            put(ContactsContract.Data.IS_SUPER_PRIMARY, 1)
        }
        val updatedRows = resolver.update(
            ContactsContract.Data.CONTENT_URI,
            primaryValues,
            "${ContactsContract.Data.RAW_CONTACT_ID}=? AND " +
                "${ContactsContract.Data.MIMETYPE}=?",
            arrayOf(rawContactId.toString(), photoMimeType),
        )
        return updatedRows > 0
    }

    private fun writableAccountScore(accountType: String): Int {
        val type = accountType.lowercase()
        return when {
            type == "com.google" -> 100
            type.contains("whatsapp") ||
                type.contains("telegram") ||
                type.contains("signal") ||
                type.contains("facebook") ||
                type.contains("skype") -> -100
            else -> 10
        }
    }

    fun applyAvatarClip(container: View, shape: String, style: String = STYLE_NORMAL) {
        if (container is ContactAvatarFrameLayout) {
            container.avatarShape = shape
            container.avatarStyle = style
            return
        }
        container.clipToOutline = true
        container.outlineProvider = object : ViewOutlineProvider() {
            override fun getOutline(view: View, outline: Outline) {
                val w = view.width.coerceAtLeast(1)
                val h = view.height.coerceAtLeast(1)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                    outline.setPath(avatarPath(w, h, shape, style))
                } else {
                    outline.setOval(0, 0, w, h)
                }
            }
        }
        container.invalidateOutline()
    }

    private fun baseShapePath(w: Int, h: Int, shape: String): Path {
        val rect = RectF(0f, 0f, w.toFloat(), h.toFloat())
        return when (shape) {
            "rounded_square" -> Path().apply {
                addRoundRect(rect, w * 0.18f, w * 0.18f, Path.Direction.CW)
            }
            "squircle" -> Path().apply {
                addRoundRect(rect, w * 0.38f, w * 0.38f, Path.Direction.CW)
            }
            "diamond" -> regularPolygonPath(w, h, 4, Math.PI / 4)
            "hexagon" -> regularPolygonPath(w, h, 6, -Math.PI / 2)
            "octagon" -> regularPolygonPath(w, h, 8, -Math.PI / 2)
            "pentagon" -> regularPolygonPath(w, h, 5, -Math.PI / 2)
            "star" -> starPath(w, h)
            "shield" -> shieldPath(w, h)
            "square" -> Path().apply {
                addRoundRect(rect, w * 0.18f, w * 0.18f, Path.Direction.CW)
            }
            else -> Path().apply { addOval(rect, Path.Direction.CW) }
        }
    }

    private fun pixelatePath(base: Path, w: Int, h: Int): Path {
        val path = Path()
        val bounds = RectF()
        base.computeBounds(bounds, true)
        val region = Region()
        region.setPath(
            base,
            Region(
                bounds.left.toInt(),
                bounds.top.toInt(),
                bounds.right.toInt(),
                bounds.bottom.toInt(),
            ),
        )
        val grid = 8
        val cellWidth = w.toFloat() / grid
        val cellHeight = h.toFloat() / grid
        for (row in 0 until grid) {
            for (column in 0 until grid) {
                val left = column * cellWidth
                val top = row * cellHeight
                val centerX = left + cellWidth / 2f
                val centerY = top + cellHeight / 2f
                if (region.contains(centerX.toInt(), centerY.toInt())) {
                    path.addRect(
                        left,
                        top,
                        left + cellWidth,
                        top + cellHeight,
                        Path.Direction.CW,
                    )
                }
            }
        }
        return path
    }

    private fun regularPolygonPath(w: Int, h: Int, sides: Int, rotation: Double): Path {
        val path = Path()
        val cx = w / 2f
        val cy = h / 2f
        val radius = min(w, h) / 2f
        for (i in 0 until sides) {
            val angle = rotation + (2 * Math.PI * i / sides)
            val x = cx + radius * cos(angle).toFloat()
            val y = cy + radius * sin(angle).toFloat()
            if (i == 0) path.moveTo(x, y) else path.lineTo(x, y)
        }
        path.close()
        return path
    }

    fun avatarPath(w: Int, h: Int, shape: String, style: String = STYLE_NORMAL): Path {
        val base = baseShapePath(w, h, shape)
        return if (style == STYLE_NOTHING) pixelatePath(base, w, h) else base
    }

    private fun starPath(w: Int, h: Int): Path {
        val path = Path()
        val cx = w / 2f
        val cy = h / 2f
        val outerR = min(w, h) / 2f
        val innerR = outerR * 0.42f
        val points = 5
        for (i in 0 until points * 2) {
            val r = if (i % 2 == 0) outerR else innerR
            val angle = -Math.PI / 2 + i * Math.PI / points
            val x = cx + r * cos(angle).toFloat()
            val y = cy + r * sin(angle).toFloat()
            if (i == 0) path.moveTo(x, y) else path.lineTo(x, y)
        }
        path.close()
        return path
    }

    private fun shieldPath(w: Int, h: Int): Path {
        val path = Path()
        path.moveTo(w / 2f, 0f)
        path.lineTo(w.toFloat(), h * 0.14f)
        path.cubicTo(w.toFloat(), h * 0.52f, w * 0.72f, h * 0.88f, w / 2f, h.toFloat())
        path.cubicTo(w * 0.28f, h * 0.88f, 0f, h * 0.52f, 0f, h * 0.14f)
        path.close()
        return path
    }

}

class ContactAvatarFrameLayout(context: Context) : FrameLayout(context) {
    var avatarShape: String = "circle"
        set(value) {
            if (field == value) return
            field = value
            invalidate()
        }

    var avatarStyle: String = ContactPhotoHelper.STYLE_NORMAL
        set(value) {
            if (field == value) return
            field = value
            invalidate()
        }

    override fun draw(canvas: Canvas) {
        if (width <= 0 || height <= 0) {
            super.draw(canvas)
            return
        }
        val saveCount = canvas.save()
        canvas.clipPath(
            ContactPhotoHelper.avatarPath(width, height, avatarShape, avatarStyle),
        )
        super.draw(canvas)
        canvas.restoreToCount(saveCount)
    }
}
