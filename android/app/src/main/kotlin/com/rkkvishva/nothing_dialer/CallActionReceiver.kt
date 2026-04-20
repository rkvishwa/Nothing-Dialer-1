package com.rkkvishva.nothing_dialer

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
        const val ACTION_HANGUP = "com.nothing.dialer.ACTION_HANGUP"
        const val ACTION_TOGGLE_MUTE = "com.nothing.dialer.ACTION_TOGGLE_MUTE"
        const val ACTION_CYCLE_AUDIO_ROUTE = "com.nothing.dialer.ACTION_CYCLE_AUDIO_ROUTE"
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        val action = intent?.action
        Log.d(TAG, "onReceive: action=$action")

        val currentCall = GlyphInCallService.currentCall
        if (currentCall == null) {
            Log.w(TAG, "No active call to handle action: $action")
            return
        }

        when (action) {
            ACTION_ANSWER -> {
                if (currentCall.state != Call.STATE_RINGING) return
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
                if (currentCall.state != Call.STATE_RINGING) return
                Log.d(TAG, "Declining call via notification action")
                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                    currentCall.reject(android.telecom.Call.REJECT_REASON_DECLINED)
                } else {
                    @Suppress("DEPRECATION")
                    currentCall.reject(false, null)
                }
            }
            ACTION_HANGUP -> {
                Log.d(TAG, "Hanging up call via notification action")
                currentCall.disconnect()
            }
            ACTION_TOGGLE_MUTE -> {
                val service = GlyphInCallService.instance
                if (service != null) {
                    val muted = !(GlyphInCallService.latestAudioState?.isMuted
                        ?: service.callAudioState?.isMuted
                        ?: false)
                    Log.d(TAG, "Toggling mute via notification action: $muted")
                    service.setMuted(muted)
                }
            }
            ACTION_CYCLE_AUDIO_ROUTE -> {
                GlyphInCallService.instance?.cycleAudioRoute()
            }
        }
    }
}
