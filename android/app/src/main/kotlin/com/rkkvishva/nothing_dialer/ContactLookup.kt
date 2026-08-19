package com.rkkvishva.nothing_dialer

import android.content.Context
import android.net.Uri
import android.provider.ContactsContract

object ContactLookup {
    fun getContactName(context: Context, phoneNumber: String): String? {
        val uri = Uri.withAppendedPath(
            ContactsContract.PhoneLookup.CONTENT_FILTER_URI,
            Uri.encode(phoneNumber),
        )
        val projection = arrayOf(ContactsContract.PhoneLookup.DISPLAY_NAME)
        var name: String? = null
        try {
            context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val idx = cursor.getColumnIndex(ContactsContract.PhoneLookup.DISPLAY_NAME)
                    if (idx != -1) name = cursor.getString(idx)
                }
            }
        } catch (_: Exception) {
        }
        return name
    }

    /**
     * Returns the contact's custom ringtone URI if set, or null to fall back to the default ringtone.
     */
    fun getContactCustomRingtoneUri(context: Context, phoneNumber: String): Uri? {
        val uri = Uri.withAppendedPath(
            ContactsContract.PhoneLookup.CONTENT_FILTER_URI,
            Uri.encode(phoneNumber),
        )
        val projection = arrayOf(ContactsContract.PhoneLookup.CUSTOM_RINGTONE)
        try {
            context.contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val idx = cursor.getColumnIndex(ContactsContract.PhoneLookup.CUSTOM_RINGTONE)
                    if (idx != -1) {
                        val s = cursor.getString(idx)
                        if (!s.isNullOrBlank()) return Uri.parse(s)
                    }
                }
            }
        } catch (_: Exception) {
        }
        return null
    }

    /** Returns the contact photo URI for [phoneNumber], if available. */
    fun getContactPhotoUri(context: Context, phoneNumber: String): Uri? =
        ContactPhotoHelper.loadContactPhotoUri(context, phoneNumber)
}
