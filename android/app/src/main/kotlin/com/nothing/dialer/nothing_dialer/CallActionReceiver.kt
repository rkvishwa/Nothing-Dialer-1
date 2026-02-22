package com.nothing.dialer.nothing_dialer

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.telecom.Call
import android.util.Log

class CallActionReceiver : BroadcastReceiver() {
    companion object {
        const val TAG = "CallActionReceiver"
        const val ACTION_ANSWER = "com.nothing.dialer.ACTION_ANSWER"
        const val ACTION_DECLINE = "com.nothing.dialer.ACTION_DECLINE"
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        val action = intent?.action
        Log.d(TAG, "onReceive: action=$action")

        val currentCall = GlyphInCallService.currentCall
        if (currentCall == null || currentCall.state != Call.STATE_RINGING) {
            Log.w(TAG, "No ringing call to handle action: $action")
            return
        }

        when (action) {
            ACTION_ANSWER -> {
                Log.d(TAG, "Answering call via notification action")
                currentCall.answer(android.telecom.VideoProfile.STATE_AUDIO_ONLY)
                
                // Launch InCallActivity to show the full screen UI
                if (context != null) {
                    val inCallIntent = Intent(context, InCallActivity::class.java).apply {
                        flags = Intent.FLAG_ACTIVITY_NEW_TASK or 
                                Intent.FLAG_ACTIVITY_SINGLE_TOP or 
                                Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
                    }
                    context.startActivity(inCallIntent)
                }
            }
            ACTION_DECLINE -> {
                Log.d(TAG, "Declining call via notification action")
                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                    currentCall.reject(android.telecom.Call.REJECT_REASON_DECLINED)
                } else {
                    @Suppress("DEPRECATION")
                    currentCall.reject(false, null)
                }
            }
        }
    }
}
