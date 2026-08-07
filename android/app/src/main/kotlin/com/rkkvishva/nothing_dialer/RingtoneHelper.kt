package com.rkkvishva.nothing_dialer

import android.content.ContentValues
import android.content.Context
import android.media.Ringtone
import android.media.RingtoneManager
import android.net.Uri
import android.provider.ContactsContract
import android.provider.Settings
import android.util.Log

/**
 * Contact ringtone helpers.
 *
 * Contact custom ringtones live in [ContactsContract.Contacts.CUSTOM_RINGTONE].
 * The phone-wide ringtone lives in system settings and must never be written
 * when assigning a per-contact tone.
 */
object RingtoneHelper {
    private const val TAG = "RingtoneHelper"

    /** Resource URI for a silent tone (distinct from Default / null CUSTOM_RINGTONE). */
    fun silentUri(context: Context): Uri {
        return Uri.parse(
            "android.resource://${context.packageName}/${R.raw.silent_ringtone}",
        )
    }

    fun isSilentUri(context: Context, uriString: String?): Boolean {
        if (uriString.isNullOrBlank()) return false
        if (uriString == "silent" || uriString == Uri.EMPTY.toString()) return true
        return try {
            Uri.parse(uriString) == silentUri(context)
        } catch (_: Exception) {
            false
        }
    }

    fun getActualDefaultUri(context: Context): Uri? {
        return try {
            RingtoneManager.getActualDefaultRingtoneUri(
                context,
                RingtoneManager.TYPE_RINGTONE,
            )
        } catch (e: Exception) {
            Log.w(TAG, "getActualDefaultUri failed: ${e.message}")
            null
        }
    }

    /**
     * Best-effort restore of the phone-wide default ringtone.
     * Used only as a safety net if an OEM ringtone picker mutates it.
     */
    fun restoreDefaultUri(context: Context, previous: Uri?): Boolean {
        if (previous == null) return false
        return try {
            val current = getActualDefaultUri(context)
            if (current == previous) return true
            RingtoneManager.setActualDefaultRingtoneUri(
                context,
                RingtoneManager.TYPE_RINGTONE,
                previous,
            )
            val restored = getActualDefaultUri(context)
            restored == previous
        } catch (e: Exception) {
            Log.w(TAG, "restoreDefaultUri failed: ${e.message}")
            // Fallback: write Settings.System directly when permitted.
            try {
                if (Settings.System.canWrite(context)) {
                    Settings.System.putString(
                        context.contentResolver,
                        Settings.System.RINGTONE,
                        previous.toString(),
                    )
                    true
                } else {
                    false
                }
            } catch (e2: Exception) {
                Log.w(TAG, "restoreDefaultUri settings fallback failed: ${e2.message}")
                false
            }
        }
    }

    fun listRingtones(context: Context): List<Map<String, String>> {
        val result = mutableListOf<Map<String, String>>()
        try {
            val manager = RingtoneManager(context)
            manager.setType(RingtoneManager.TYPE_RINGTONE)
            val cursor = manager.cursor
            while (cursor.moveToNext()) {
                val title = cursor.getString(RingtoneManager.TITLE_COLUMN_INDEX) ?: continue
                val uri = manager.getRingtoneUri(cursor.position) ?: continue
                result.add(
                    mapOf(
                        "title" to title,
                        "uri" to uri.toString(),
                    ),
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "listRingtones failed: ${e.message}")
        }
        return result
    }

    fun getRingtoneTitle(context: Context, uriString: String?): String? {
        if (uriString.isNullOrBlank()) return null
        if (isSilentUri(context, uriString)) {
            return null // caller maps to localized "Silent"
        }
        return try {
            val uri = Uri.parse(uriString)
            // Default ringtone symbolic URI
            if (uri == Settings.System.DEFAULT_RINGTONE_URI) {
                return null // caller maps to localized "Default"
            }
            RingtoneManager.getRingtone(context, uri)?.getTitle(context)
        } catch (e: Exception) {
            Log.w(TAG, "getRingtoneTitle failed: ${e.message}")
            null
        }
    }

    /**
     * Reads the contact's CUSTOM_RINGTONE. Returns a map:
     * - selection: "default" | "silent" | "ringtone"
     * - uri: string or null
     * - title: display title when selection == "ringtone"
     */
    fun getContactRingtone(context: Context, contactId: String): Map<String, Any?> {
        val uri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, contactId)
        try {
            context.contentResolver.query(
                uri,
                arrayOf(ContactsContract.Contacts.CUSTOM_RINGTONE),
                null,
                null,
                null,
            )?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val idx = cursor.getColumnIndex(ContactsContract.Contacts.CUSTOM_RINGTONE)
                    if (idx != -1) {
                        val stored = cursor.getString(idx)
                        return classifyStoredRingtone(context, stored)
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "getContactRingtone failed: ${e.message}")
        }
        return mapOf("selection" to "default", "uri" to null, "title" to null)
    }

    private fun classifyStoredRingtone(context: Context, stored: String?): Map<String, Any?> {
        if (stored == null) {
            return mapOf("selection" to "default", "uri" to null, "title" to null)
        }
        if (stored.isEmpty() || isSilentUri(context, stored)) {
            return mapOf(
                "selection" to "silent",
                "uri" to silentUri(context).toString(),
                "title" to null,
            )
        }
        val parsed = Uri.parse(stored)
        if (parsed == Settings.System.DEFAULT_RINGTONE_URI) {
            // Symbolic default — treat as Default (no per-contact override).
            return mapOf("selection" to "default", "uri" to null, "title" to null)
        }
        val title = getRingtoneTitle(context, stored)
        return mapOf("selection" to "ringtone", "uri" to stored, "title" to title)
    }

    /**
     * Writes CUSTOM_RINGTONE only. Never touches the phone-wide default.
     *
     * @param ringtoneUri null/"default" → clear (use phone default)
     *                      "silent"/empty → bundled silent resource
     *                      otherwise → custom URI
     * @return true if the Contacts row was updated (or already matched)
     */
    fun setContactRingtone(context: Context, contactId: String, ringtoneUri: String?): Boolean {
        val values = ContentValues()
        val normalizedStored: String? = when {
            ringtoneUri == null ||
                ringtoneUri == "default" ||
                ringtoneUri == Settings.System.DEFAULT_RINGTONE_URI.toString() -> {
                values.putNull(ContactsContract.Contacts.CUSTOM_RINGTONE)
                null
            }
            ringtoneUri.isEmpty() ||
                ringtoneUri == "silent" ||
                isSilentUri(context, ringtoneUri) -> {
                val silent = silentUri(context).toString()
                values.put(ContactsContract.Contacts.CUSTOM_RINGTONE, silent)
                silent
            }
            else -> {
                values.put(ContactsContract.Contacts.CUSTOM_RINGTONE, ringtoneUri)
                ringtoneUri
            }
        }

        val contactUri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, contactId)
        return try {
            val updated = context.contentResolver.update(contactUri, values, null, null)
            if (updated > 0) {
                true
            } else {
                // Verify whether the desired value is already present.
                val current = getContactRingtone(context, contactId)
                val desired = classifyStoredRingtone(context, normalizedStored)
                current["selection"] == desired["selection"] &&
                    current["uri"] == desired["uri"]
            }
        } catch (e: Exception) {
            Log.e(TAG, "setContactRingtone failed: ${e.message}")
            false
        }
    }

    private var preview: Ringtone? = null

    fun preview(context: Context, uriString: String?) {
        stopPreview()
        if (uriString.isNullOrBlank() ||
            uriString == "default" ||
            uriString == "silent" ||
            isSilentUri(context, uriString)
        ) {
            return
        }
        try {
            val ringtone = RingtoneManager.getRingtone(context, Uri.parse(uriString)) ?: return
            ringtone.play()
            preview = ringtone
        } catch (e: Exception) {
            Log.w(TAG, "preview failed: ${e.message}")
        }
    }

    fun stopPreview() {
        try {
            preview?.stop()
        } catch (_: Exception) {
        }
        preview = null
    }
}
