package com.rkkvishva.nothing_dialer

import android.content.Context
import android.database.ContentObserver
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.provider.ContactsContract
import io.flutter.plugin.common.EventChannel

class ContactsChangeStreamHandler(
    private val context: Context,
) : EventChannel.StreamHandler {

    private var observer: ContentObserver? = null
    private var eventSink: EventChannel.EventSink? = null
    private val debounceHandler = Handler(Looper.getMainLooper())
    private var pendingNotify: Runnable? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
        val handler = Handler(Looper.getMainLooper())
        observer = object : ContentObserver(handler) {
            override fun onChange(selfChange: Boolean) {
                scheduleNotify()
            }

            override fun onChange(selfChange: Boolean, uri: Uri?) {
                scheduleNotify()
            }
        }
        val resolver = context.contentResolver
        resolver.registerContentObserver(
            ContactsContract.Contacts.CONTENT_URI,
            true,
            observer!!,
        )
        resolver.registerContentObserver(
            ContactsContract.RawContacts.CONTENT_URI,
            true,
            observer!!,
        )
    }

    override fun onCancel(arguments: Any?) {
        pendingNotify?.let { debounceHandler.removeCallbacks(it) }
        pendingNotify = null
        observer?.let { context.contentResolver.unregisterContentObserver(it) }
        observer = null
        eventSink = null
    }

    private fun scheduleNotify() {
        pendingNotify?.let { debounceHandler.removeCallbacks(it) }
        pendingNotify = Runnable {
            ContactsSyncState.notifyContactsChanged()
            eventSink?.success(null)
        }
        debounceHandler.postDelayed(pendingNotify!!, 400)
    }
}
