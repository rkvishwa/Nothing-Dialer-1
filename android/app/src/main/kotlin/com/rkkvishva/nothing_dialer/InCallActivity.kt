package com.rkkvishva.nothing_dialer

import android.app.Activity
import android.app.KeyguardManager
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.Build
import android.telecom.Call

import android.telecom.CallAudioState
import android.telecom.PhoneAccountHandle
import android.telecom.TelecomManager
import android.util.Log
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import android.os.PowerManager
import android.content.Context
import android.widget.FrameLayout
import android.widget.GridLayout
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import android.view.MotionEvent
import android.content.SharedPreferences

/**
 * Google Phone-style In-Call UI.
 * 4 controls in a single row: Mute · Keypad · Speaker · More
 * "Add call" and "Change SIM" live in the More menu.
 */
class InCallActivity : Activity() {

    companion object {
        const val TAG = "InCallActivity"
        // Static handler that survives activity destroy — used for SIM switch redial
        private val simSwitchHandler = Handler(Looper.getMainLooper())
    }

    // ── Views ────────────────────────────────────────────────────────────────
    private lateinit var rootLayout: FrameLayout
    private lateinit var mainContent: LinearLayout
    private lateinit var topSection: LinearLayout
    private lateinit var keypadContainer: LinearLayout

    private lateinit var avatarText: TextView
    private lateinit var nameText: TextView
    private lateinit var numberText: TextView
    private lateinit var simLabel: TextView
    private lateinit var statusText: TextView
    private lateinit var durationText: TextView

    // 4 control buttons in one row
    private lateinit var muteBtn: LinearLayout
    private lateinit var muteIcon: ImageView
    private lateinit var muteLabel: TextView

    private lateinit var keypadBtn: LinearLayout
    private lateinit var keypadIcon: ImageView
    private lateinit var keypadLabel: TextView

    private lateinit var speakerBtn: LinearLayout
    private lateinit var speakerIcon: ImageView
    private lateinit var speakerLabel: TextView

    private lateinit var moreBtn: LinearLayout
    private lateinit var moreIcon: ImageView
    private lateinit var moreLabel: TextView

    // Keypad
    private var isKeypadVisible = false
    private var dtmfDisplay: TextView? = null

    // Incoming call overlay
    private lateinit var incomingOverlay: FrameLayout
    private var isIncoming = false
    private var btnDeclineLayout: LinearLayout? = null
    private var btnAnswerLayout: LinearLayout? = null

    // State
    private lateinit var themeColors: ThemeColors
    private val handler = Handler(Looper.getMainLooper())
    private var callStartTime: Long = 0
    private var timerRunning = false
    private var isMuted = false
    private var currentRoute = CallAudioState.ROUTE_EARPIECE
    private var isCallActive = false
    private var selectedSimLabel: String? = null
    private var isChangingSim = false
    private var boundCall: Call? = null

    private val audioStateListener: (CallAudioState) -> Unit = { audioState ->
        runOnUiThread {
            isMuted = audioState.isMuted
            currentRoute = audioState.route
            updateControlStates()
        }
    }

    // Proximity sensor — PROXIMITY_SCREEN_OFF_WAKE_LOCK does all the heavy
    // lifting: when acquired it turns the screen off when the sensor reports
    // "near" and back on when it reports "far".  We must NOT release it in
    // onPause because Android fires onPause when the screen goes off, which
    // would immediately undo the blanking.
    private var proximityWakeLock: PowerManager.WakeLock? = null

    private val callCallback = object : Call.Callback() {
        override fun onStateChanged(call: Call, state: Int) {
            Log.d(TAG, "onStateChanged: $state")
            runOnUiThread { updateUI(state) }
        }
    }

    private val currentCallListener: (Call?) -> Unit = { call ->
        runOnUiThread { bindToCurrentCall(call) }
    }

    private val timerRunnable = object : Runnable {
        override fun run() {
            if (timerRunning) {
                val elapsed = (System.currentTimeMillis() - callStartTime) / 1000
                durationText.text = String.format("%02d:%02d", elapsed / 60, elapsed % 60)
                handler.postDelayed(this, 1000)
            }
        }
    }

    // ── Lifecycle ─────────────────────────────────────────────────────────────

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O_MR1) {
            setShowWhenLocked(true)
            setTurnScreenOn(true)
            val km = getSystemService(Context.KEYGUARD_SERVICE) as KeyguardManager
            km.requestDismissKeyguard(this, null)
        } else {
            @Suppress("DEPRECATION")
            window.addFlags(
                WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED or
                WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON or
                WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
            )
        }
        // NOTE: intentionally NOT setting FLAG_KEEP_SCREEN_ON here.
        // That flag fights the proximity wake-lock and prevents the screen
        // from turning off when the phone is held to the ear.

        
        themeColors = ThemeColors.get(this)
        window.statusBarColor = Color.TRANSPARENT
        window.navigationBarColor = themeColors.background

        buildUI(themeColors)
        buildIncomingOverlay(themeColors)
        initProximitySensor()

        if (GlyphInCallService.currentCall == null) {
            finish()
            return
        }
        bindToCurrentCall(GlyphInCallService.currentCall)
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

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

    private fun getSimLabelForCall(call: Call): String? {
        val accountHandle = call.details?.accountHandle ?: return null
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        return try { tm.getPhoneAccount(accountHandle)?.label?.toString() } catch (_: Exception) { null }
    }

    private fun bindToCurrentCall(call: Call?) {
        if (boundCall === call) {
            return
        }
        try {
            boundCall?.unregisterCallback(callCallback)
        } catch (_: Exception) {
        }
        boundCall = call
        if (call == null) {
            finish()
            return
        }
        call.registerCallback(callCallback)

        val handle = call.details?.handle
        val number = handle?.schemeSpecificPart ?: "Unknown"
        val contactName = getContactName(number)

        if (contactName != null) {
            nameText.text = contactName
            numberText.text = number
            numberText.visibility = View.VISIBLE
            avatarText.text = contactName.first().uppercase()
        } else {
            nameText.text = number
            numberText.visibility = View.GONE
            avatarText.text = if (number.isNotEmpty()) number.first().toString() else "?"
        }

        selectedSimLabel = getSimLabelForCall(call)
        if (selectedSimLabel != null) {
            simLabel.text = formatSimLabel("Calling via", selectedSimLabel!!)
        } else {
            simLabel.text = ""
        }
        simLabel.visibility = if (selectedSimLabel != null) View.VISIBLE else View.GONE

        val audioState = GlyphInCallService.latestAudioState ?: GlyphInCallService.instance?.callAudioState
        isMuted = audioState?.isMuted ?: false
        currentRoute = audioState?.route ?: CallAudioState.ROUTE_EARPIECE
        updateControlStates()
        updateUI(call.state)
    }

    private fun initProximitySensor() {
        try {
            val powerManager = getSystemService(POWER_SERVICE) as PowerManager
            if (powerManager.isWakeLockLevelSupported(PowerManager.PROXIMITY_SCREEN_OFF_WAKE_LOCK)) {
                proximityWakeLock = powerManager.newWakeLock(
                    PowerManager.PROXIMITY_SCREEN_OFF_WAKE_LOCK,
                    "NothingDialer:ProximityWakeLock"
                )
            } else {
                Log.w(TAG, "PROXIMITY_SCREEN_OFF_WAKE_LOCK not supported on this device")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to init proximity sensor", e)
        }
    }

    private fun acquireProximityWakeLock() {
        if (proximityWakeLock?.isHeld == false) {
            Log.d(TAG, "Acquiring proximity wake lock")
            proximityWakeLock?.acquire()
        }
    }

    private fun releaseProximityWakeLock() {
        if (proximityWakeLock?.isHeld == true) {
            Log.d(TAG, "Releasing proximity wake lock")
            // RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY (flag 1) tells the system to wait
            // until the sensor reports "far" before actually turning the screen on.
            // This avoids a flash-on-then-off glitch when the phone is still near
            // the ear at the moment we release (e.g. call disconnected).
            proximityWakeLock?.release(1 /* RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY */)
        }
    }

    private fun updateProximityWakeLock(state: Int) {
        val shouldSupportProximity = when (state) {
            Call.STATE_ACTIVE, Call.STATE_DIALING, Call.STATE_CONNECTING -> true
            else -> false
        }

        // We only use proximity if NOT on speaker and NOT on bluetooth
        val isReceiver = currentRoute == CallAudioState.ROUTE_EARPIECE
                || currentRoute == CallAudioState.ROUTE_WIRED_HEADSET

        if (shouldSupportProximity && isReceiver) {
            acquireProximityWakeLock()
        } else {
            releaseProximityWakeLock()
        }
    }

    // ── State Updates ─────────────────────────────────────────────────────────

    private fun updateUI(state: Int) {
        when (state) {
            Call.STATE_SELECT_PHONE_ACCOUNT -> { statusText.text = "Select SIM…"; showNativeSimPicker() }
            Call.STATE_CONNECTING, Call.STATE_DIALING -> {
                statusText.text = "Calling…"; durationText.text = ""; isCallActive = false
            }
            Call.STATE_RINGING -> {
                statusText.text = "Incoming call"; durationText.text = ""; isCallActive = false
                isIncoming = true
                showIncomingOverlay()
            }
            Call.STATE_ACTIVE -> {
                statusText.text = ""; isCallActive = true; isIncoming = false
                hideIncomingOverlay()
                if (!timerRunning) { timerRunning = true; callStartTime = System.currentTimeMillis(); handler.post(timerRunnable) }
            }
            Call.STATE_DISCONNECTED, Call.STATE_DISCONNECTING -> {
                val activeCurrentCall = GlyphInCallService.currentCall
                if (activeCurrentCall != null && activeCurrentCall !== boundCall) {
                    isCallActive = false
                    timerRunning = false
                    handler.removeCallbacks(timerRunnable)
                    return
                }
                if (incomingOverlay.visibility != View.VISIBLE) {
                    isIncoming = false; hideIncomingOverlay()
                } else {
                    (btnDeclineLayout?.background as? android.graphics.drawable.GradientDrawable)?.setColor(Color.parseColor("#49454f"))
                    (btnDeclineLayout?.getChildAt(0) as? ImageView)?.setColorFilter(Color.parseColor("#938F99"))
                    (btnAnswerLayout?.background as? android.graphics.drawable.GradientDrawable)?.setColor(Color.parseColor("#49454f"))
                    (btnAnswerLayout?.getChildAt(0) as? ImageView)?.setColorFilter(Color.parseColor("#938F99"))
                }
                statusText.text = if (isChangingSim) "Switching SIM…" else "Call Ended"
                isCallActive = false; timerRunning = false
                handler.removeCallbacks(timerRunnable)
                if (!isChangingSim && GlyphInCallService.currentCall == null) {
                    handler.postDelayed({ finish() }, 1200)
                }
            }
        }
        updateProximityWakeLock(state)
    }

    private fun showNativeSimPicker() {
        val call = GlyphInCallService.currentCall ?: return
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        val accounts: List<PhoneAccountHandle> = tm.callCapablePhoneAccounts
        if (accounts.isEmpty()) { call.disconnect(); finish(); return }
        if (accounts.size == 1) { call.phoneAccountSelected(accounts[0], false); return }

        val labels = accounts.mapIndexed { index, account ->
            try { tm.getPhoneAccount(account)?.label?.toString() ?: "SIM ${index + 1}" } catch (_: Exception) { "SIM ${index + 1}" }
        }

        showStyledSimSheet("Choose SIM for this call", labels) { which ->
            call.phoneAccountSelected(accounts[which], false)
            selectedSimLabel = labels[which]
            simLabel.text = formatSimLabel("Calling via", labels[which])
            simLabel.visibility = View.VISIBLE
        }
    }

    private fun formatSimLabel(prefix: String, simName: String): android.text.Spanned {
        return android.text.Html.fromHtml(
            "$prefix <b>$simName</b>",
            android.text.Html.FROM_HTML_MODE_LEGACY
        )
    }

    // ── Change SIM ────────────────────────────────────────────────────────────

    private fun changeSim() {
        val call = GlyphInCallService.currentCall ?: return
        val handle = call.details?.handle
        val number = handle?.schemeSpecificPart ?: return

        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        val accounts: List<PhoneAccountHandle> = tm.callCapablePhoneAccounts
        if (accounts.size < 2) return

        val labels = accounts.mapIndexed { index, account ->
            try { tm.getPhoneAccount(account)?.label?.toString() ?: "SIM ${index + 1}" } catch (_: Exception) { "SIM ${index + 1}" }
        }

        showStyledSimSheet("Change SIM", labels) { which ->
            isChangingSim = true
            statusText.text = "Switching SIM…"
            call.disconnect()
            // Use static handler that survives activity destroy
            finish()
            simSwitchHandler.postDelayed({
                val uri = android.net.Uri.fromParts("tel", number, null)
                val extras = Bundle().apply {
                    putParcelable(TelecomManager.EXTRA_PHONE_ACCOUNT_HANDLE, accounts[which])
                }
                try { tm.placeCall(uri, extras) } catch (e: SecurityException) { Log.e(TAG, "Failed to redial on new SIM", e) }
            }, 500)
        }
    }

    // ── Shared styled SIM picker (matches Flutter sim_picker_sheet.dart) ──────

    private fun showStyledSimSheet(title: String, labels: List<String>, onSelect: (Int) -> Unit) {
        val dialog = android.app.Dialog(this)
        dialog.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)

        val sheet = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = GradientDrawable().apply {
                setColor(themeColors.background)
                cornerRadii = floatArrayOf(dp(28).toFloat(), dp(28).toFloat(), dp(28).toFloat(), dp(28).toFloat(), 0f, 0f, 0f, 0f)
            }
        }

        // Drag handle
        sheet.addView(View(this).apply {
            background = GradientDrawable().apply { setColor(Color.parseColor("#49454F")); cornerRadius = dp(2).toFloat() }
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(4)).apply {
                gravity = Gravity.CENTER_HORIZONTAL; topMargin = dp(16); bottomMargin = dp(8)
            }
        })

        // Title
        sheet.addView(TextView(this).apply {
            text = title
            setTextColor(themeColors.onSurface)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 24f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL)
            setPadding(dp(24), dp(16), dp(24), dp(8))
        })

        // SIM options — matching Flutter's sim_picker_sheet colours
        val accentColors = intArrayOf(
            Color.parseColor("#D0BCFF"),  // Purple
            Color.parseColor("#81C784"),  // Green
            Color.parseColor("#4FC3F7")   // Blue
        )

        for (i in labels.indices) {
            val row = LinearLayout(this).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                isClickable = true; isFocusable = true
                setPadding(dp(24), dp(16), dp(24), dp(16))

                setOnClickListener { dialog.dismiss(); onSelect(i) }
            }

            // SIM card icon in colored circle
            val color = accentColors[i % accentColors.size]
            val iconContainer = FrameLayout(this).apply {
                background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(color) }
                layoutParams = LinearLayout.LayoutParams(dp(40), dp(40)).apply { marginEnd = dp(16) }
            }
            val simIcon = ImageView(this).apply {
                setImageResource(R.drawable.ic_sim_card)
                setColorFilter(Color.parseColor("#141218"))
                layoutParams = FrameLayout.LayoutParams(dp(20), dp(20)).apply { gravity = Gravity.CENTER }
            }
            iconContainer.addView(simIcon)
            row.addView(iconContainer)

            // Label + slot
            val textCol = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
            textCol.addView(TextView(this).apply {
                text = labels[i]
                setTextColor(themeColors.onSurface)
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
                typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
            })
            textCol.addView(TextView(this).apply {
                text = "SIM ${i + 1}"
                setTextColor(themeColors.onSurfaceVariant)
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
            })
            row.addView(textCol)

            sheet.addView(row)
        }

        // Bottom padding
        sheet.addView(View(this).apply {
            layoutParams = LinearLayout.LayoutParams(0, dp(16))
        })

        dialog.setContentView(sheet)
        dialog.window?.apply {
            setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
            setGravity(Gravity.BOTTOM); setBackgroundDrawableResource(android.R.color.transparent)
            attributes = attributes.also { it.windowAnimations = android.R.style.Animation_InputMethod }
        }
        dialog.setCancelable(true)
        dialog.setOnCancelListener { if (title == "Choose SIM for this call") { GlyphInCallService.currentCall?.disconnect(); finish() } }
        dialog.show()
    }

    // ── Call Controls ─────────────────────────────────────────────────────────

    private fun toggleMute() { isMuted = !isMuted; GlyphInCallService.instance?.setMuted(isMuted); updateControlStates() }

    private fun showAudioPicker() {
        val audioState = GlyphInCallService.instance?.callAudioState
        val supported = audioState?.supportedRouteMask ?: CallAudioState.ROUTE_EARPIECE
        val hasBluetooth = (supported and CallAudioState.ROUTE_BLUETOOTH) != 0

        if (!hasBluetooth) {
            val nextRoute = when (currentRoute) {
                CallAudioState.ROUTE_EARPIECE -> CallAudioState.ROUTE_SPEAKER
                else -> CallAudioState.ROUTE_EARPIECE
            }
            applyAudioRoute(nextRoute)
            return
        }

        val dialog = android.app.Dialog(this)
        dialog.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
        val sheet = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = GradientDrawable().apply {
                setColor(themeColors.surfaceContainer)
                cornerRadii = floatArrayOf(dp(24).toFloat(), dp(24).toFloat(), dp(24).toFloat(), dp(24).toFloat(), 0f, 0f, 0f, 0f)
            }
            setPadding(dp(24), dp(16), dp(24), dp(24))
        }

        sheet.addView(View(this).apply {
            background = GradientDrawable().apply { setColor(Color.parseColor("#49454F")); cornerRadius = dp(2).toFloat() }
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(4)).apply { gravity = Gravity.CENTER_HORIZONTAL; bottomMargin = dp(20) }
        })

        fun option(label: String, route: Int) {
            val isSelected = currentRoute == route
            sheet.addView(TextView(this).apply {
                text = if (isSelected) "$label  (Current)" else label
                setTextColor(if (isSelected) themeColors.onSurface else themeColors.onSurfaceVariant)
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
                typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
                setPadding(dp(20), dp(16), dp(20), dp(16))
                background = GradientDrawable().apply { setColor(themeColors.surfaceContainerHigh); cornerRadius = dp(12).toFloat() }
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { bottomMargin = dp(8) }
                setOnClickListener {
                    applyAudioRoute(route)
                    dialog.dismiss()
                }
            })
        }

        option("Phone", CallAudioState.ROUTE_EARPIECE)
        option("Speaker", CallAudioState.ROUTE_SPEAKER)
        option("Bluetooth", CallAudioState.ROUTE_BLUETOOTH)

        dialog.setContentView(sheet)
        dialog.window?.apply {
            setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
            setGravity(Gravity.BOTTOM); setBackgroundDrawableResource(android.R.color.transparent)
            attributes = attributes.also { it.windowAnimations = android.R.style.Animation_InputMethod }
        }
        dialog.show()
    }

    private fun applyAudioRoute(route: Int) {
        currentRoute = route
        GlyphInCallService.instance?.setAudioRoute(route)
        updateControlStates()
        val call = GlyphInCallService.currentCall
        if (call != null) updateProximityWakeLock(call.state)
    }

    private fun updateSpeakerButtonUi() {
        when (currentRoute) {
            CallAudioState.ROUTE_BLUETOOTH -> {
                speakerIcon.setImageResource(R.drawable.ic_bluetooth)
                speakerLabel.text = "Bluetooth"
            }
            CallAudioState.ROUTE_SPEAKER -> {
                speakerIcon.setImageResource(R.drawable.ic_volume_up)
                speakerLabel.text = "Speaker"
            }
            else -> {
                speakerIcon.setImageResource(R.drawable.ic_phone_in_talk)
                speakerLabel.text = "Phone"
            }
        }
    }

    private fun sendDtmf(digit: Char) { GlyphInCallService.currentCall?.playDtmfTone(digit); GlyphInCallService.currentCall?.stopDtmfTone() }
    private fun hangUp() { GlyphInCallService.currentCall?.disconnect() }

    private fun updateControlStates() {
        val onBg = if (themeColors.isLight) themeColors.onSurface else Color.WHITE
        val offBg = themeColors.surfaceContainer
        val onIcon = if (themeColors.isLight) themeColors.background else Color.parseColor("#141218")
        val offIcon = themeColors.onSurface

        fun setState(btn: LinearLayout, icon: ImageView, active: Boolean) {
            (btn.background as GradientDrawable).setColor(if (active) onBg else offBg)
            icon.setColorFilter(if (active) onIcon else offIcon)
        }

        setState(muteBtn, muteIcon, isMuted)
        setState(speakerBtn, speakerIcon, currentRoute != CallAudioState.ROUTE_EARPIECE)
        setState(keypadBtn, keypadIcon, isKeypadVisible)
        updateSpeakerButtonUi()
    }

    override fun onDestroy() {
        timerRunning = false; handler.removeCallbacksAndMessages(null)
        try { boundCall?.unregisterCallback(callCallback) } catch (_: Exception) {}
        GlyphInCallService.currentCallListeners.remove(currentCallListener)
        // Final cleanup — always release the wake lock when the activity is
        // truly destroyed so we never leak it.
        releaseProximityWakeLock()
        super.onDestroy()
    }

    override fun onResume() {
        super.onResume()
        MainActivity.isAppInForeground = true
        if (!GlyphInCallService.currentCallListeners.contains(currentCallListener)) {
            GlyphInCallService.currentCallListeners.add(currentCallListener)
        }
        currentCallListener(GlyphInCallService.currentCall)
        if (!GlyphInCallService.audioStateListeners.contains(audioStateListener)) {
            GlyphInCallService.audioStateListeners.add(audioStateListener)
        }
        val latestAudio = GlyphInCallService.latestAudioState ?: GlyphInCallService.instance?.callAudioState
        if (latestAudio != null) {
            isMuted = latestAudio.isMuted
            currentRoute = latestAudio.route
            updateControlStates()
        }
        // Re-acquire the proximity wake lock if we're in an active/dialing call
        // on earpiece. This handles the case where the screen turned on (user
        // pulled phone away) and onResume fired.
        val call = GlyphInCallService.currentCall
        if (call != null) {
            updateProximityWakeLock(call.state)
        }
    }


    override fun onPause() {
        super.onPause()
        if (isChangingSim) {
            // Keep it foreground logically during brief SIM swap jump
        } else {
            MainActivity.isAppInForeground = false
        }
        // IMPORTANT: Do NOT release the proximity wake lock here!
        // When PROXIMITY_SCREEN_OFF_WAKE_LOCK blanks the screen, Android
        // fires onPause. Releasing the lock here would immediately un-blank
        // the screen, defeating the entire purpose. The wake lock is only
        // released in onDestroy or when the call ends/audio route changes.
        GlyphInCallService.currentCallListeners.remove(currentCallListener)
        GlyphInCallService.audioStateListeners.remove(audioStateListener)
    }

    override fun onNewIntent(intent: android.content.Intent?) {
        super.onNewIntent(intent)
        setIntent(intent)
        currentCallListener(GlyphInCallService.currentCall)
    }

    override fun onBackPressed() { if (isIncoming) { /* ignore back during ringing */ } else { finish() } }
    override fun onUserLeaveHint() { super.onUserLeaveHint(); if (!isIncoming) finish() }

    // ── Incoming Call Overlay ─────────────────────────────────────────────────

    private fun buildIncomingOverlay(theme: ThemeColors) {
        val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
        val useSlide = prefs.getString("flutter.answer_method", "slide") == "slide"

        incomingOverlay = FrameLayout(this).apply {
            setBackgroundColor(theme.background)
            visibility = View.GONE
            isClickable = true  // consume touch events
        }

        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_HORIZONTAL
            setPadding(0, dp(80), 0, dp(0))
        }

        val call = GlyphInCallService.currentCall
        val number = call?.details?.handle?.schemeSpecificPart ?: "Unknown"
        val contactName = getContactName(number)
        val selectedSimLabel = call?.let { getSimLabelForCall(it) }
        
        val headerText = if (selectedSimLabel != null) "Call via <b>$selectedSimLabel</b> from" else "Call from"
        
        content.addView(TextView(this).apply {
            text = android.text.Html.fromHtml(headerText, android.text.Html.FROM_HTML_MODE_LEGACY)
            setTextColor(theme.onSurfaceVariant)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        })

        // ── Avatar ──
        val avatarSize = dp(110)
        val avatarBg = FrameLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(theme.surfaceContainerHigh) }
            layoutParams = LinearLayout.LayoutParams(avatarSize, avatarSize).apply { gravity = Gravity.CENTER_HORIZONTAL; topMargin = dp(24) }
        }
        val avText = TextView(this).apply {
            text = if (contactName?.isNotEmpty() == true) contactName.first().uppercase() else if (number.isNotEmpty()) number.first().toString() else "?"
            setTextColor(theme.onSurface)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 46f)
            typeface = Typeface.create("sans-serif-light", Typeface.NORMAL)
            gravity = Gravity.CENTER
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }
        avatarBg.addView(avText)
        content.addView(avatarBg)

        // Amma (Name)
        content.addView(TextView(this).apply {
            text = contactName ?: number
            setTextColor(theme.onSurface)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 44f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(16) }
        })

        // Mobile 077 049 9787
        content.addView(TextView(this).apply {
            text = if (contactName != null) "Mobile $number" else ""
            setTextColor(theme.onSurfaceVariant)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER
            visibility = if (contactName != null) View.VISIBLE else View.GONE
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(4) }
        })

        // Spacer pushes controls to bottom
        content.addView(View(this).apply { layoutParams = LinearLayout.LayoutParams(0, 0, 1f) })

        // ── Message Button ──
        val msgButton = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            background = GradientDrawable().apply {
                setColor(theme.surfaceContainer)
                cornerRadius = dp(24).toFloat()
            }
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, dp(48)).apply {
                bottomMargin = dp(48)
            }
            setPadding(dp(20), 0, dp(24), 0)
            setOnClickListener { showQuickResponseDialog(theme) }
        }
        
        msgButton.addView(ImageView(this).apply {
            setImageResource(android.R.drawable.sym_action_chat)
            setColorFilter(Color.parseColor("#D0BCFF"))
            layoutParams = LinearLayout.LayoutParams(dp(20), dp(20)).apply { rightMargin = dp(8) }
        })
        
        msgButton.addView(TextView(this).apply {
            text = "Message"
            setTextColor(theme.onSurfaceVariant)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
        })
        
        content.addView(msgButton)

        if (useSlide) {
            content.addView(buildSlideToAnswer(theme))
        } else {
            content.addView(buildAnswerDeclineButtons(theme))
        }

        incomingOverlay.addView(content, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT
        ))
        rootLayout.addView(incomingOverlay, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT
        ))
    }

    private fun showQuickResponseDialog(theme: ThemeColors) {
        val dialog = android.app.Dialog(this).apply {
            requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
            setContentView(LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                background = GradientDrawable().apply {
                    setColor(theme.surfaceContainer)
                    cornerRadius = dp(16).toFloat()
                }
                
                val msgs = arrayOf("In class", "I'll call you back.", "I'll call you later.", "In bus", "Write your own...")
                msgs.forEachIndexed { index, msg ->
                    addView(TextView(context).apply {
                        text = msg
                        setTextColor(theme.onSurface)
                        setTextSize(TypedValue.COMPLEX_UNIT_SP, 18f)
                        setPadding(dp(24), dp(16), dp(24), dp(16))
                        setOnClickListener {
                            if (index < msgs.size - 1) {
                                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                                    GlyphInCallService.currentCall?.reject(android.telecom.Call.REJECT_REASON_DECLINED)
                                } else {
                                    @Suppress("DEPRECATION")
                                    GlyphInCallService.currentCall?.reject(true, msg)
                                }
                            } else {
                                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                                    GlyphInCallService.currentCall?.reject(android.telecom.Call.REJECT_REASON_DECLINED)
                                } else {
                                    @Suppress("DEPRECATION")
                                    GlyphInCallService.currentCall?.reject(false, null)
                                }
                            }
                            dismiss()
                        }
                    })
                }
            })
        }
        dialog.window?.apply {
            setLayout(android.view.ViewGroup.LayoutParams.MATCH_PARENT, android.view.ViewGroup.LayoutParams.WRAP_CONTENT)
            setGravity(Gravity.BOTTOM)
            setBackgroundDrawable(android.graphics.drawable.ColorDrawable(Color.TRANSPARENT))
        }
        dialog.show()
    }

    private fun buildSlideToAnswer(theme: ThemeColors): FrameLayout {
        val container = FrameLayout(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, dp(90)
            ).apply { leftMargin = dp(24); rightMargin = dp(24); bottomMargin = dp(100) }
        }

        // Track Background
        val trackBg = FrameLayout(this).apply {
            background = GradientDrawable().apply {
                setColor(theme.surfaceContainer)
                cornerRadius = dp(45).toFloat()
            }
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }
        
        // Decline text (Left)
        trackBg.addView(TextView(this).apply {
            text = "Decline"
            setTextColor(theme.onSurface)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER_VERTICAL or Gravity.START
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.MATCH_PARENT).apply {
                leftMargin = dp(32)
            }
        })
        
        // Answer text (Right)
        trackBg.addView(TextView(this).apply {
            text = "Answer"
            setTextColor(theme.onSurface)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER_VERTICAL or Gravity.END
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.MATCH_PARENT).apply {
                rightMargin = dp(32)
                gravity = Gravity.END
            }
        })
        
        container.addView(trackBg)

        // Slide Handle
        val handleSize = dp(74)
        val slideHandle = FrameLayout(this).apply {
            background = GradientDrawable().apply {
                shape = GradientDrawable.OVAL
                setColor(theme.onSurface)
            }
            layoutParams = FrameLayout.LayoutParams(handleSize, handleSize).apply {
                gravity = Gravity.CENTER
            }
        }
        val phoneIcon = ImageView(this).apply {
             setImageResource(R.drawable.ic_call_end) // standard phone icon base
             setColorFilter(if (theme.isLight) theme.background else Color.parseColor("#34A853"))
             rotation = 135f
             layoutParams = FrameLayout.LayoutParams(dp(36), dp(36)).apply { gravity = Gravity.CENTER }
        }
        slideHandle.addView(phoneIcon)
        container.addView(slideHandle)

        // Touch handling
        var startX = 0f
        var answered = false
        var isDragging = false
        container.setOnTouchListener { view, event ->
            val trackW = view.width.toFloat()
            val maxSlide = (trackW / 2f) - (handleSize / 2f) - dp(8).toFloat()
            when (event.action) {
                MotionEvent.ACTION_DOWN -> { 
                    startX = event.rawX
                    answered = false
                    isDragging = true
                    true 
                }
                MotionEvent.ACTION_MOVE -> {
                    if (answered || !isDragging) return@setOnTouchListener true
                    val deltaX = event.rawX - startX
                    val clamped = deltaX.coerceIn(-maxSlide, maxSlide)
                    slideHandle.translationX = clamped
                    
                    if (clamped < -maxSlide * 0.8f) { answered = true; declineCall() }
                    if (clamped > maxSlide * 0.8f) { answered = true; answerCall() }
                    true
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    isDragging = false
                    if (!answered) {
                        slideHandle.animate().translationX(0f).setDuration(200).start()
                    }
                    true
                }
                else -> false
            }
        }

        return container
    }

    private fun buildAnswerDeclineButtons(theme: ThemeColors): LinearLayout {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(100) }
        }

        // Decline
        val declineCol = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL; gravity = Gravity.CENTER_HORIZONTAL
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
        }
        val decIcon = ImageView(this).apply {
            setImageResource(R.drawable.ic_call_end); setColorFilter(Color.WHITE)
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(32))
        }
        val decBtn = LinearLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(Color.parseColor("#EA4335")) }
            gravity = Gravity.CENTER; addView(decIcon)
            layoutParams = LinearLayout.LayoutParams(dp(80), dp(80))
            setOnClickListener { declineCall() }
        }
        btnDeclineLayout = decBtn
        declineCol.addView(decBtn)
        declineCol.addView(TextView(this).apply {
            text = "Decline"; setTextColor(Color.parseColor("#EA4335"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(10) }
        })
        row.addView(declineCol)

        // Answer
        val answerCol = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL; gravity = Gravity.CENTER_HORIZONTAL
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
        }
        val ansIcon = ImageView(this).apply {
            setImageResource(R.drawable.ic_call_end); setColorFilter(Color.WHITE)
            rotation = 135f
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(32))
        }
        val ansBtn = LinearLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(Color.parseColor("#34A853")) }
            gravity = Gravity.CENTER; addView(ansIcon)
            layoutParams = LinearLayout.LayoutParams(dp(80), dp(80))
            setOnClickListener { answerCall() }
        }
        btnAnswerLayout = ansBtn
        answerCol.addView(ansBtn)
        answerCol.addView(TextView(this).apply {
            text = "Answer"; setTextColor(Color.parseColor("#34A853"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(10) }
        })
        row.addView(answerCol)

        return row
    }

    private fun showIncomingOverlay() {
        if (::incomingOverlay.isInitialized) incomingOverlay.visibility = View.VISIBLE
    }

    private fun hideIncomingOverlay() {
        if (::incomingOverlay.isInitialized) incomingOverlay.visibility = View.GONE
    }

    private fun answerCall() {
        GlyphInCallService.currentCall?.answer(android.telecom.VideoProfile.STATE_AUDIO_ONLY)
    }

    private fun declineCall() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
            GlyphInCallService.currentCall?.reject(android.telecom.Call.REJECT_REASON_DECLINED)
        } else {
            @Suppress("DEPRECATION")
            GlyphInCallService.currentCall?.reject(false, null)
        }
    }

    // ── Keypad toggle ────────────────────────────────────────────────────────

    private fun toggleKeypad() {
        isKeypadVisible = !isKeypadVisible
        keypadContainer.visibility = if (isKeypadVisible) View.VISIBLE else View.GONE
        updateControlStates()
    }

    private fun buildKeypadSection(theme: ThemeColors): LinearLayout {
        val container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            visibility = View.GONE
            background = GradientDrawable().apply {
                setColor(theme.background)
                cornerRadii = floatArrayOf(
                    dp(32).toFloat(), dp(32).toFloat(), 
                    dp(32).toFloat(), dp(32).toFloat(), 
                    0f, 0f, 0f, 0f
                )
                setStroke(dp(1), theme.handle)
            }
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.WRAP_CONTENT).apply {
                gravity = Gravity.BOTTOM
                bottomMargin = dp(285) // Absolute positioning ~20dp above control row
            }
            setPadding(dp(16), dp(16), dp(16), dp(8))
        }

        // Close button at top left using a Unicode X
        val closeBtn = TextView(this).apply {
            text = "✕"
            setTextColor(theme.onSurfaceVariant)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 24f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(dp(48), dp(48)).apply {
                gravity = Gravity.START
                bottomMargin = dp(16)
            }
            setOnClickListener { toggleKeypad() }
        }
        container.addView(closeBtn)

        val keysInfo = listOf(
            listOf("1" to "oo", "2" to "ABC", "3" to "DEF"),
            listOf("4" to "GHI", "5" to "JKL", "6" to "MNO"),
            listOf("7" to "PQRS", "8" to "TUV", "9" to "WXYZ"),
            listOf("*" to "", "0" to "+", "#" to "")
        )

        val keysContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        }

        for (row in keysInfo) {
            val rowLayout = LinearLayout(this@InCallActivity).apply {
                orientation = LinearLayout.HORIZONTAL
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
            }
            for ((key, sub) in row) {
                val keyBtn = LinearLayout(this@InCallActivity).apply {
                    orientation = LinearLayout.VERTICAL
                    gravity = Gravity.CENTER
                    background = GradientDrawable().apply {
                        shape = GradientDrawable.RECTANGLE
                        cornerRadius = dp(35).toFloat()
                        setColor(theme.surfaceContainer)
                    }
                    layoutParams = LinearLayout.LayoutParams(0, dp(64), 1f).apply {
                        setMargins(dp(6), dp(6), dp(6), dp(6))
                    }
                    
                    addView(TextView(this@InCallActivity).apply {
                        text = key; setTextColor(theme.onSurface)
                        setTextSize(TypedValue.COMPLEX_UNIT_SP, 28f)
                        typeface = Typeface.create("sans-serif", Typeface.NORMAL)
                        gravity = Gravity.CENTER
                    })
                    if (sub.isNotEmpty()) {
                        addView(TextView(this@InCallActivity).apply {
                            text = sub; setTextColor(theme.onSurfaceVariant)
                            setTextSize(TypedValue.COMPLEX_UNIT_SP, 10f)
                            letterSpacing = 0.05f
                            gravity = Gravity.CENTER
                        })
                    }
                    setOnClickListener { sendDtmf(key[0]) }
                }
                rowLayout.addView(keyBtn)
            }
            keysContainer.addView(rowLayout)
        }

        container.addView(keysContainer)
        return container
    }

    // ── Build UI ──────────────────────────────────────────────────────────────

    private fun buildUI(theme: ThemeColors) {
        rootLayout = FrameLayout(this).apply { setBackgroundColor(theme.background) }

        mainContent = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_HORIZONTAL
            setPadding(0, dp(56), 0, dp(80))
        }

        // ── Top Section (avatar + info) ──
        topSection = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_HORIZONTAL
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        }

        simLabel = TextView(this).apply {
            setTextColor(theme.onSurfaceVariant); setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
            gravity = Gravity.CENTER; visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        }
        topSection.addView(simLabel)

        // Avatar
        val avatarSize = dp(110)
        val avatarContainer = FrameLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(theme.surfaceContainerHigh) }
            layoutParams = LinearLayout.LayoutParams(avatarSize, avatarSize).apply { gravity = Gravity.CENTER_HORIZONTAL; topMargin = dp(24) }
        }
        avatarText = TextView(this).apply {
            setTextColor(theme.onSurface); setTextSize(TypedValue.COMPLEX_UNIT_SP, 46f)
            typeface = Typeface.create("sans-serif-light", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }
        avatarContainer.addView(avatarText)
        topSection.addView(avatarContainer)

        nameText = TextView(this).apply {
            setTextColor(theme.onSurface); setTextSize(TypedValue.COMPLEX_UNIT_SP, 44f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(16); leftMargin = dp(16); rightMargin = dp(16) }
        }
        topSection.addView(nameText)

        numberText = TextView(this).apply {
            setTextColor(theme.onSurfaceVariant); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER; visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(4) }
        }
        topSection.addView(numberText)

        statusText = TextView(this).apply {
            text = "Calling…"; setTextColor(theme.onSurfaceVariant); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(8) }
        }
        topSection.addView(statusText)

        durationText = TextView(this).apply {
            setTextColor(theme.onSurfaceVariant); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(4) }
        }
        topSection.addView(durationText)

        mainContent.addView(topSection)

        // ── Flexible Spacer (pushes controls to the bottom) ──
        mainContent.addView(View(this).apply { layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f) })

        // ── Single row: Mute · Keypad · Speaker · More ──
        mainContent.addView(buildControlsRow(theme))

        // ── Spacer ──
        mainContent.addView(View(this).apply { layoutParams = LinearLayout.LayoutParams(0, dp(20)) })

        // ── End Call ──
        mainContent.addView(buildEndCallButton(theme))

        // Add main flow to root
        rootLayout.addView(mainContent, FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        
        // Add keypad overlay on top of everything
        keypadContainer = buildKeypadSection(theme)
        rootLayout.addView(keypadContainer)
        
        setContentView(rootLayout)
    }

    private fun buildControlsRow(theme: ThemeColors): LinearLayout {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { leftMargin = dp(16); rightMargin = dp(16) }
        }

        val m = makeBtn(R.drawable.ic_mic_off, "Mute", theme) { toggleMute() }
        muteBtn = m.first; muteIcon = m.second; muteLabel = m.third
        row.addView(wrap(muteBtn, muteLabel))

        val k = makeBtn(R.drawable.ic_dialpad, "Keypad", theme) { toggleKeypad() }
        keypadBtn = k.first; keypadIcon = k.second; keypadLabel = k.third
        row.addView(wrap(keypadBtn, keypadLabel))

        val s = makeBtn(R.drawable.ic_phone_in_talk, "Phone", theme) { showAudioPicker() }
        speakerBtn = s.first; speakerIcon = s.second; speakerLabel = s.third
        row.addView(wrap(speakerBtn, speakerLabel))

        val mo = makeBtn(R.drawable.ic_more_vert, "More", theme) { showMoreMenu(theme) }
        moreBtn = mo.first; moreIcon = mo.second; moreLabel = mo.third
        row.addView(wrap(moreBtn, moreLabel))

        return row
    }

    private fun makeBtn(iconRes: Int, label: String, theme: ThemeColors, onClick: () -> Unit): Triple<LinearLayout, ImageView, TextView> {
        val icon = ImageView(this).apply {
            setImageResource(iconRes); setColorFilter(theme.onSurface)
            layoutParams = LinearLayout.LayoutParams(dp(28), dp(28))
        }
        val btn = LinearLayout(this).apply {
            background = GradientDrawable().apply { 
                shape = GradientDrawable.RECTANGLE
                cornerRadius = dp(24).toFloat()
                setColor(theme.surfaceContainer) 
            }
            gravity = Gravity.CENTER; addView(icon)
            layoutParams = LinearLayout.LayoutParams(dp(72), dp(72))
            setOnClickListener { onClick() }
        }
        val lbl = TextView(this).apply {
            text = label; setTextColor(theme.onSurfaceVariant); setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(6) }
        }
        return Triple(btn, icon, lbl)
    }

    private fun wrap(btn: LinearLayout, lbl: TextView): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL; gravity = Gravity.CENTER_HORIZONTAL
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
            addView(btn); addView(lbl)
        }
    }

    private fun buildEndCallButton(theme: ThemeColors): LinearLayout {
        val icon = ImageView(this).apply {
            setImageResource(R.drawable.ic_call_end); setColorFilter(Color.WHITE)
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(32))
        }
        return LinearLayout(this).apply {
            background = GradientDrawable().apply { 
                shape = GradientDrawable.OVAL
                setColor(Color.parseColor("#EA4335")) 
            }
            gravity = Gravity.CENTER; addView(icon)
            layoutParams = LinearLayout.LayoutParams(
                dp(80), dp(80)
            ).apply { 
                gravity = Gravity.CENTER_HORIZONTAL
            }
            setOnClickListener { hangUp() }
        }
    }

    private fun showMoreMenu(theme: ThemeColors) {
        val dialog = android.app.Dialog(this)
        dialog.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
        val sheet = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = GradientDrawable().apply {
                setColor(theme.surfaceContainer)
                cornerRadii = floatArrayOf(dp(24).toFloat(), dp(24).toFloat(), dp(24).toFloat(), dp(24).toFloat(), 0f, 0f, 0f, 0f)
            }
            setPadding(dp(24), dp(16), dp(24), dp(32))
        }

        // Handle
        sheet.addView(View(this).apply {
            background = GradientDrawable().apply { setColor(Color.parseColor("#49454F")); cornerRadius = dp(2).toFloat() }
            layoutParams = LinearLayout.LayoutParams(dp(32), dp(4)).apply { gravity = Gravity.CENTER_HORIZONTAL; bottomMargin = dp(20) }
        })

        fun opt(txt: String, onClick: () -> Unit) {
            sheet.addView(TextView(this@InCallActivity).apply {
                text = txt; setTextColor(theme.onSurface); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
                typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
                setPadding(dp(20), dp(16), dp(20), dp(16))
                background = GradientDrawable().apply { setColor(theme.surfaceContainerHigh); cornerRadius = dp(12).toFloat() }
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { bottomMargin = dp(8) }
                setOnClickListener { onClick(); dialog.dismiss() }
            })
        }

        // Add call — always visible, but disabled when not active
        val addCallTv = TextView(this@InCallActivity).apply {
            text = "Add call"
            setTextColor(if (isCallActive) theme.onSurface else theme.onSurfaceVariant)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
            setPadding(dp(20), dp(16), dp(20), dp(16))
            background = GradientDrawable().apply { setColor(theme.surfaceContainerHigh); cornerRadius = dp(12).toFloat() }
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { bottomMargin = dp(8) }
            isClickable = isCallActive
            if (isCallActive) {
                setOnClickListener {
                    dialog.dismiss()
                    launchAddCallDialpad()
                }
            }
        }
        sheet.addView(addCallTv)
        opt("Change SIM") { changeSim() }

        dialog.setContentView(sheet)
        dialog.window?.apply {
            setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
            setGravity(Gravity.BOTTOM); setBackgroundDrawableResource(android.R.color.transparent)
            attributes = attributes.also { it.windowAnimations = android.R.style.Animation_InputMethod }
        }
        dialog.show()
    }

    private fun launchAddCallDialpad() {
        try {
            val intent = android.content.Intent(this, MainActivity::class.java).apply {
                addFlags(
                    android.content.Intent.FLAG_ACTIVITY_NEW_TASK or
                        android.content.Intent.FLAG_ACTIVITY_SINGLE_TOP or
                        android.content.Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
                )
                putExtra("EXTRA_SHOW_DIALPAD", true)
            }
            startActivity(intent)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to launch dialpad for add call: ${e.message}")
        }
    }

    private fun dp(v: Int): Int = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v.toFloat(), resources.displayMetrics).toInt()

    data class ThemeColors(
        val background: Int,
        val onSurface: Int,
        val onSurfaceVariant: Int,
        val surfaceContainer: Int,
        val surfaceContainerHigh: Int,
        val handle: Int,
        val isLight: Boolean
    ) {
        companion object {
            fun get(context: Context): ThemeColors {
                val prefs = context.getSharedPreferences("FlutterSharedPreferences", Context.MODE_PRIVATE)
                val themeMode = prefs.getString("flutter.theme_mode", "system") ?: "system"
                
                val isLight = when (themeMode) {
                    "light" -> true
                    "dark" -> false
                    else -> {
                        (context.resources.configuration.uiMode and android.content.res.Configuration.UI_MODE_NIGHT_MASK) == android.content.res.Configuration.UI_MODE_NIGHT_NO
                    }
                }
                
                return if (isLight) {
                    ThemeColors(
                        background = Color.parseColor("#F3F3F3"),
                        onSurface = Color.parseColor("#1C1B1F"),
                        onSurfaceVariant = Color.parseColor("#49454F"),
                        surfaceContainer = Color.parseColor("#E6E1E5"),
                        surfaceContainerHigh = Color.parseColor("#DADCE0"),
                        handle = Color.parseColor("#CAC4D0"),
                        isLight = true
                    )
                } else {
                    ThemeColors(
                        background = Color.parseColor("#141218"),
                        onSurface = Color.parseColor("#E6E1E5"),
                        onSurfaceVariant = Color.parseColor("#B0B0B0"),
                        surfaceContainer = Color.parseColor("#2B2930"),
                        surfaceContainerHigh = Color.parseColor("#3D3548"),
                        handle = Color.parseColor("#49454F"),
                        isLight = false
                    )
                }
            }
        }
    }
}
