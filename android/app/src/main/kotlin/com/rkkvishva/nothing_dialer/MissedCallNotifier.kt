package com.rkkvishva.nothing_dialer

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log

object MissedCallNotifier {
    private const val TAG = "MissedCallNotifier"
    const val CHANNEL_ID = "missed_call"
    private const val NOTIF_ID = 94002

    fun ensureChannel(context: Context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val nm = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val ch = NotificationChannel(
            CHANNEL_ID,
            "Missed calls",
            NotificationManager.IMPORTANCE_DEFAULT,
        )
        ch.enableVibration(true)
        ch.setShowBadge(true)
        nm.createNotificationChannel(ch)
    }

    fun show(context: Context, number: String, name: String?, count: Int) {
        val app = context.applicationContext
        ensureChannel(app)

        val title = name?.takeIf { it.isNotBlank() } ?: number
        val text = if (count > 1) {
            "$count missed calls"
        } else {
            "Missed call"
        }

        val contentIntent = PendingIntent.getActivity(
            app,
            300,
            Intent(app, MainActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or
                    Intent.FLAG_ACTIVITY_CLEAR_TOP or
                    Intent.FLAG_ACTIVITY_SINGLE_TOP
                putExtra(MainActivity.EXTRA_OPEN_TAB, "recents")
            },
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )

        val callBackIntent = PendingIntent.getBroadcast(
            app,
            301,
            Intent(app, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_MISSED_CALL_BACK
                putExtra(CallActionReceiver.EXTRA_PHONE_NUMBER, number)
            },
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )

        val messageIntent = PendingIntent.getBroadcast(
            app,
            302,
            Intent(app, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_MISSED_MESSAGE
                putExtra(CallActionReceiver.EXTRA_PHONE_NUMBER, number)
            },
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )

        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(app, CHANNEL_ID)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(app)
        }

        builder.setSmallIcon(android.R.drawable.sym_call_missed)
            .setContentTitle(title)
            .setContentText(text)
            .setSubText(number)
            .setCategory(Notification.CATEGORY_MISSED_CALL)
            .setAutoCancel(true)
            .setContentIntent(contentIntent)
            .setOnlyAlertOnce(true)
            .addAction(
                android.R.drawable.sym_action_call,
                "Call back",
                callBackIntent,
            )
            .addAction(
                android.R.drawable.ic_dialog_email,
                "Message",
                messageIntent,
            )

        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            @Suppress("DEPRECATION")
            builder.setPriority(Notification.PRIORITY_DEFAULT)
        }

        try {
            val nm = app.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.notify(NOTIF_ID, builder.build())
        } catch (e: Exception) {
            Log.e(TAG, "notify failed: ${e.message}")
        }
    }

    fun cancel(context: Context) {
        try {
            (context.applicationContext.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager)
                .cancel(NOTIF_ID)
        } catch (e: Exception) {
            Log.e(TAG, "cancel failed: ${e.message}")
        }
    }
}
