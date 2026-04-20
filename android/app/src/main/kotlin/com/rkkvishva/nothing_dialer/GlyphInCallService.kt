package com.rkkvishva.nothing_dialer

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.telecom.Call
import android.telecom.CallAudioState
import android.telecom.InCallService
import android.util.Log

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.plugin.common.MethodChannel

/**
 * GlyphInCallService
 *
 * Runs whenever an active call exists. Because the app is the Default Dialer,
 * Android grants granular call states:
 *   - Call.STATE_DIALING  → outgoing call ringing on the other end → Glyphs ON
 *   - Call.STATE_ACTIVE   → call answered                          → Glyphs OFF
 *   - Call.STATE_DISCONNECTED → call ended                        → Glyphs OFF
 *
 * Sends commands to Flutter via MethodChannel so the `nothing_glyph_interface`
 * plugin (which holds the exclusive GlyphManager session) can toggle the lights.
 *
 * Also launches [InCallActivity] when a call starts.
 */
class GlyphInCallService : InCallService() {

    companion object {
        const val TAG = "GlyphInCallService"
        const val ENGINE_ID = "nothing_dialer_engine"
        const val GLYPH_CHANNEL = "nothing_dialer/glyph"

        var currentCall: Call? = null
            private set

        var instance: GlyphInCallService? = null
            private set

        var latestAudioState: CallAudioState? = null
            private set

        val audioStateListeners = mutableListOf<(CallAudioState) -> Unit>()
        val currentCallListeners = mutableListOf<(Call?) -> Unit>()
    }

    override fun onCreate() {
        super.onCreate()
        Log.d(TAG, "onCreate")
        instance = this
        createNotificationChannel()
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            
            // Channel for ongoing calls
            val ongoingChannel = NotificationChannel(
                "ongoing_call",
                "Ongoing Calls",
                NotificationManager.IMPORTANCE_LOW
            )
            manager.createNotificationChannel(ongoingChannel)
            
            // Channel for incoming calls
            val incomingChannel = NotificationChannel(
                "incoming_call",
                "Incoming Calls",
                NotificationManager.IMPORTANCE_HIGH
            )
            incomingChannel.setSound(null, null) // InCallService handles playing actual ringtone if needed natively or system does it via Dialer role.
            manager.createNotificationChannel(incomingChannel)
        }
    }

    override fun onDestroy() {
        Log.d(TAG, "onDestroy")
        instance = null
        super.onDestroy()
    }

    private val callCallbacks = mutableMapOf<Call, Call.Callback>()
    private val activeCalls = mutableListOf<Call>()

    private fun setCurrentCall(call: Call?) {
        currentCall = call
        for (listener in currentCallListeners.toList()) {
            try {
                listener(call)
            } catch (_: Exception) {
            }
        }
    }

    // ─── InCallService lifecycle ─────────────────────────────────────────────

    override fun onCallAdded(call: Call) {
        super.onCallAdded(call)
        Log.d(TAG, "onCallAdded: state=${call.state}")

        if (!activeCalls.contains(call)) {
            activeCalls.add(call)
        }
        setCurrentCall(call)

        val callback = buildCallback()
        callCallbacks[call] = callback
        call.registerCallback(callback)

        // Handle the initial state immediately.
        handleCallState(call.state)

        // Incoming (RINGING): notification only — user opens full UI via tap or Answer.
        // Outgoing / other states: show in-call screen immediately.
        if (call.state != Call.STATE_RINGING) {
            launchInCallActivity()
        } else {
            Log.d(TAG, "Incoming call: showing call notification only (no automatic full-screen UI).")
        }


        // Start Foreground Notification so user can answer/decline or return to call
        updateForegroundNotification(call.state)
    }

    private fun updateForegroundNotification(state: Int) {
        val call = currentCall ?: return
        val isMuted = latestAudioState?.isMuted ?: callAudioState?.isMuted ?: false
        val muteIconRes = if (isMuted) R.drawable.ic_mic_on else R.drawable.ic_mic_off
        val muteLabel = if (isMuted) "Unmute" else "Mute"

        val intent = Intent(this, InCallActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
        }
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            intent,
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )

        val channelId = if (state == Call.STATE_RINGING) "incoming_call" else "ongoing_call"
        
        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(this, channelId)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(this)
        }
        
        builder.setSmallIcon(android.R.drawable.sym_action_call)
               .setOngoing(true)
               .setCategory(Notification.CATEGORY_CALL)

        if (state == Call.STATE_RINGING) {
            val handle = call.details?.handle
            val number = handle?.schemeSpecificPart ?: "Unknown"
            val contactName = getContactName(number)
            
            val title = contactName ?: number
            val text = if (contactName != null) "Incoming call from $number" else "Incoming call"
            
            builder.setContentTitle(title)
                   .setContentText(text)
                   .setContentIntent(pendingIntent)
                   
            // Add Answer action
            val answerIntent = Intent(this, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_ANSWER
            }
            val answerPendingIntent = PendingIntent.getBroadcast(
                this, 1, answerIntent, PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )

            // Add Decline action
            val declineIntent = Intent(this, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_DECLINE
            }
            val declinePendingIntent = PendingIntent.getBroadcast(
                this, 2, declineIntent, PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )

            // Android 12+ (S) CallStyle
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val person = android.app.Person.Builder()
                    .setName(title)
                    .setImportant(true)
                    .build()

                builder.style = Notification.CallStyle.forIncomingCall(
                    person,
                    declinePendingIntent,
                    answerPendingIntent
                )
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val answerAction = Notification.Action.Builder(
                    R.drawable.ic_call_end, "Answer", answerPendingIntent
                ).build()
                val declineAction = Notification.Action.Builder(
                    R.drawable.ic_call_end, "Decline", declinePendingIntent
                ).build()
                builder.addAction(declineAction)
                builder.addAction(answerAction)
            } else {
                @Suppress("DEPRECATION")
                builder.addAction(R.drawable.ic_call_end, "Decline", declinePendingIntent)
                @Suppress("DEPRECATION")
                builder.addAction(R.drawable.ic_call_end, "Answer", answerPendingIntent)
            }
        } else {
            val route = latestAudioState?.route ?: callAudioState?.route ?: CallAudioState.ROUTE_EARPIECE
            val (routeIconRes, routeLabel) = when (route) {
                CallAudioState.ROUTE_SPEAKER -> R.drawable.ic_volume_up to "Speaker"
                CallAudioState.ROUTE_BLUETOOTH -> R.drawable.ic_bluetooth to "Bluetooth"
                else -> R.drawable.ic_phone_in_talk to "Phone"
            }

            val handle = call.details?.handle
            val number = handle?.schemeSpecificPart ?: "Unknown"
            val contactName = getContactName(number)
            val title = contactName ?: number
            val text = if (state == Call.STATE_DIALING || state == Call.STATE_CONNECTING) {
                "Calling…"
            } else {
                "Tap to return to call"
            }

            val hangupIntent = Intent(this, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_HANGUP
            }
            val hangupPendingIntent = PendingIntent.getBroadcast(
                this, 3, hangupIntent, PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )

            val toggleMuteIntent = Intent(this, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_TOGGLE_MUTE
            }
            val toggleMutePendingIntent = PendingIntent.getBroadcast(
                this, 4, toggleMuteIntent, PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )
            val routeIntent = Intent(this, CallActionReceiver::class.java).apply {
                action = CallActionReceiver.ACTION_CYCLE_AUDIO_ROUTE
            }
            val routePendingIntent = PendingIntent.getBroadcast(
                this, 5, routeIntent, PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )

            builder.setContentTitle(title)
                .setContentText(text)
                .setContentIntent(pendingIntent)

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val person = android.app.Person.Builder()
                    .setName(title)
                    .setImportant(true)
                    .build()
                builder.style = Notification.CallStyle.forOngoingCall(person, hangupPendingIntent)
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val hangupAction = Notification.Action.Builder(
                    R.drawable.ic_call_end, "End", hangupPendingIntent
                ).build()
                builder.addAction(hangupAction)
            } else {
                @Suppress("DEPRECATION")
                builder.addAction(R.drawable.ic_call_end, "End", hangupPendingIntent)
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                // Icon-only chips under the large End button (CallStyle).
                val muteAction = Notification.Action.Builder(
                    muteIconRes, "", toggleMutePendingIntent
                ).build()
                val routeAction = Notification.Action.Builder(
                    routeIconRes, "", routePendingIntent
                ).build()
                builder.addAction(muteAction)
                builder.addAction(routeAction)
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val muteAction = Notification.Action.Builder(
                    muteIconRes, muteLabel, toggleMutePendingIntent
                ).build()
                val routeAction = Notification.Action.Builder(
                    routeIconRes, routeLabel, routePendingIntent
                ).build()
                builder.addAction(muteAction)
                builder.addAction(routeAction)
            } else {
                @Suppress("DEPRECATION")
                builder.addAction(muteIconRes, muteLabel, toggleMutePendingIntent)
                @Suppress("DEPRECATION")
                builder.addAction(routeIconRes, routeLabel, routePendingIntent)
            }
        }

        val notification = builder.build()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(101, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_PHONE_CALL)
        } else {
            startForeground(101, notification)
        }
    }
    
    private fun getContactName(phoneNumber: String): String? {
        val uri = android.net.Uri.withAppendedPath(
            android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI,
            android.net.Uri.encode(phoneNumber)
        )
        val projection = arrayOf(android.provider.ContactsContract.PhoneLookup.DISPLAY_NAME)
        var name: String? = null
        try {
            contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val idx = cursor.getColumnIndex(android.provider.ContactsContract.PhoneLookup.DISPLAY_NAME)
                    if (idx != -1) name = cursor.getString(idx)
                }
            }
        } catch (_: Exception) {}
        return name
    }


    override fun onCallRemoved(call: Call) {
        super.onCallRemoved(call)
        Log.d(TAG, "onCallRemoved")

        callCallbacks.remove(call)?.let { call.unregisterCallback(it) }
        activeCalls.remove(call)
        if (activeCalls.isNotEmpty()) {
            val nextCall = activeCalls.last()
            setCurrentCall(nextCall)
            handleCallState(nextCall.state)
            if (nextCall.state != Call.STATE_RINGING) {
                launchInCallActivity()
            }
        } else {
            setCurrentCall(null)
            sendGlyphCommand("lightsOff")
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                stopForeground(STOP_FOREGROUND_REMOVE)
            } else {
                @Suppress("DEPRECATION")
                stopForeground(true)
            }
        }
    }

    // ─── Call state monitoring ───────────────────────────────────────────────

    private fun buildCallback(): Call.Callback = object : Call.Callback() {
        override fun onStateChanged(call: Call, state: Int) {
            Log.d(TAG, "onStateChanged: state=$state")
            handleCallState(state)
        }
    }

    override fun onCallAudioStateChanged(audioState: CallAudioState?) {
        super.onCallAudioStateChanged(audioState)
        if (audioState == null) return
        latestAudioState = audioState
        for (listener in audioStateListeners.toList()) {
            try {
                listener(audioState)
            } catch (_: Exception) {
            }
        }
        currentCall?.let { updateForegroundNotification(it.state) }
    }

    fun cycleAudioRoute() {
        val state = latestAudioState ?: callAudioState ?: return
        val supported = state.supportedRouteMask
        val bluetoothSupported = (supported and CallAudioState.ROUTE_BLUETOOTH) != 0
        val nextRoute = when (state.route) {
            CallAudioState.ROUTE_EARPIECE, CallAudioState.ROUTE_WIRED_HEADSET -> {
                CallAudioState.ROUTE_SPEAKER
            }
            CallAudioState.ROUTE_SPEAKER -> {
                if (bluetoothSupported) CallAudioState.ROUTE_BLUETOOTH else CallAudioState.ROUTE_EARPIECE
            }
            CallAudioState.ROUTE_BLUETOOTH -> CallAudioState.ROUTE_EARPIECE
            else -> CallAudioState.ROUTE_EARPIECE
        }
        setAudioRoute(nextRoute)
    }

    private fun handleCallState(state: Int) {
        updateForegroundNotification(state)

        when (state) {
            Call.STATE_CONNECTING,
            Call.STATE_DIALING -> {
                Log.d(TAG, "handleCallState: state=$state -> lightsOnOutgoing")
                sendGlyphCommand("lightsOnOutgoing")
            }
            Call.STATE_RINGING -> {
                Log.d(TAG, "handleCallState: state=$state -> lightsOnIncoming")
                sendGlyphCommand("lightsOnIncoming")
            }

            Call.STATE_ACTIVE -> {
                Log.d(TAG, "handleCallState: state=$state -> lightsOnActiveCall")
                sendGlyphCommand("lightsOnActiveCall")
            }

            Call.STATE_DISCONNECTED,
            Call.STATE_DISCONNECTING -> {
                Log.d(TAG, "handleCallState: state=$state -> lightsOff")
                sendGlyphCommand("lightsOff")
            }
        }
    }

    // ─── Launch the in-call UI ───────────────────────────────────────────────

    private fun launchInCallActivity() {
        try {
            val intent = android.content.Intent(this, InCallActivity::class.java).apply {
                addFlags(
                    android.content.Intent.FLAG_ACTIVITY_NEW_TASK or
                    android.content.Intent.FLAG_ACTIVITY_SINGLE_TOP or
                    android.content.Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
                )
            }
            startActivity(intent)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to launch InCallActivity: ${e.message}")
        }
    }

    // ─── MethodChannel bridge → Flutter/Dart ─────────────────────────────────

    private fun sendGlyphCommand(command: String) {
        val engine: FlutterEngine? = FlutterEngineCache.getInstance().get(ENGINE_ID)
        if (engine == null) {
            Log.e(TAG, "sendGlyphCommand: Flutter engine NOT CACHED. Cannot send: $command")
            return
        }
        val messenger = engine.dartExecutor.binaryMessenger
        val channel = MethodChannel(messenger, GLYPH_CHANNEL)
        android.os.Handler(android.os.Looper.getMainLooper()).post {
            try {
                Log.d(TAG, "sendGlyphCommand: Invoking $command via MethodChannel")
                channel.invokeMethod(command, null)
            } catch (e: Exception) {
                Log.e(TAG, "sendGlyphCommand error: ${e.message}")
            }
        }
    }
}
