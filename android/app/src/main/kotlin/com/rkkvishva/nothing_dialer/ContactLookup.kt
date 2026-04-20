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
}
