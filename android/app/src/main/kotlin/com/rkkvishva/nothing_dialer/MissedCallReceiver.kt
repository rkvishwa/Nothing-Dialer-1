package com.rkkvishva.nothing_dialer

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.telecom.TelecomManager
import android.util.Log

/**
 * Default dialer: Telecom asks us to show the missed-call notification.
 */
class MissedCallReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != TelecomManager.ACTION_SHOW_MISSED_CALLS_NOTIFICATION) return

        val number = intent.getStringExtra(TelecomManager.EXTRA_NOTIFICATION_PHONE_NUMBER)
            ?.trim()
            .orEmpty()
        if (number.isEmpty()) {
            Log.d(TAG, "SHOW_MISSED_CALLS_NOTIFICATION: no phone number extra")
            return
        }

        val count = intent.getIntExtra(TelecomManager.EXTRA_NOTIFICATION_COUNT, 1)
            .coerceAtLeast(1)

        if (!MissedCallDedupe.shouldShow(number)) {
            Log.d(TAG, "Deduped missed notification for $number")
            return
        }

        val name = ContactLookup.getContactName(context, number)
        MissedCallNotifier.show(context, number, name, count)
        Log.d(TAG, "Posted missed call notification for $number (count=$count)")
    }

    companion object {
        private const val TAG = "MissedCallReceiver"
    }
}
