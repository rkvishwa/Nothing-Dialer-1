package com.nothing.dialer.nothing_dialer

import android.app.Activity
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.os.Handler
import android.os.Looper
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
    private val handler = Handler(Looper.getMainLooper())
    private var callStartTime: Long = 0
    private var timerRunning = false
    private var isMuted = false
    private var currentRoute = CallAudioState.ROUTE_EARPIECE
    private var isCallActive = false
    private var selectedSimLabel: String? = null
    private var isChangingSim = false

    private val callCallback = object : Call.Callback() {
        override fun onStateChanged(call: Call, state: Int) {
            Log.d(TAG, "onStateChanged: $state")
            runOnUiThread { updateUI(state) }
        }
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

        window.addFlags(
            WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED or
            WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON or
            WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
        )
        window.statusBarColor = Color.TRANSPARENT
        window.navigationBarColor = Color.parseColor("#141218")

        buildUI()
        buildIncomingOverlay()

        val call = GlyphInCallService.currentCall
        if (call != null) {
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
                simLabel.text = android.text.Html.fromHtml("Calling via <font color='#00E676'>$selectedSimLabel</font>", android.text.Html.FROM_HTML_MODE_LEGACY)
            } else {
                simLabel.text = ""
            }
            simLabel.visibility = if (selectedSimLabel != null) View.VISIBLE else View.GONE

            val audioState = GlyphInCallService.instance?.callAudioState
            isMuted = audioState?.isMuted ?: false
            currentRoute = audioState?.route ?: CallAudioState.ROUTE_EARPIECE

            updateControlStates()
            updateUI(call.state)
        } else {
            finish()
        }
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
                if (!isChangingSim) { handler.postDelayed({ finish() }, 1200) }
            }
        }
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
            simLabel.text = android.text.Html.fromHtml("Calling via <font color='#00E676'>${labels[which]}</font>", android.text.Html.FROM_HTML_MODE_LEGACY)
            simLabel.visibility = View.VISIBLE
        }
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
                setColor(Color.parseColor("#1C1B1F"))
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
            setTextColor(Color.parseColor("#E6E1E5"))
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
                setTextColor(Color.parseColor("#E6E1E5"))
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
                typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
            })
            textCol.addView(TextView(this).apply {
                text = "SIM ${i + 1}"
                setTextColor(Color.parseColor("#CAC4D0"))
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

    private fun cycleSpeaker() {
        val audioState = GlyphInCallService.instance?.callAudioState
        val supported = audioState?.supportedRouteMask ?: CallAudioState.ROUTE_EARPIECE
        val hasBluetooth = (supported and CallAudioState.ROUTE_BLUETOOTH) != 0
        currentRoute = when (currentRoute) {
            CallAudioState.ROUTE_EARPIECE -> CallAudioState.ROUTE_SPEAKER
            CallAudioState.ROUTE_SPEAKER -> if (hasBluetooth) CallAudioState.ROUTE_BLUETOOTH else CallAudioState.ROUTE_EARPIECE
            CallAudioState.ROUTE_BLUETOOTH -> CallAudioState.ROUTE_EARPIECE
            else -> CallAudioState.ROUTE_EARPIECE
        }
        GlyphInCallService.instance?.setAudioRoute(currentRoute); updateControlStates()
    }

    private fun sendDtmf(digit: Char) { GlyphInCallService.currentCall?.playDtmfTone(digit); GlyphInCallService.currentCall?.stopDtmfTone() }
    private fun hangUp() { GlyphInCallService.currentCall?.disconnect() }

    private fun updateControlStates() {
        val onBg = Color.WHITE
        val offBg = Color.parseColor("#2B2930")
        val onIcon = Color.parseColor("#141218")
        val offIcon = Color.WHITE

        fun setState(btn: LinearLayout, icon: ImageView, active: Boolean) {
            (btn.background as GradientDrawable).setColor(if (active) onBg else offBg)
            icon.setColorFilter(if (active) onIcon else offIcon)
        }

        setState(muteBtn, muteIcon, isMuted)
        setState(speakerBtn, speakerIcon, currentRoute == CallAudioState.ROUTE_SPEAKER)
        setState(keypadBtn, keypadIcon, isKeypadVisible)
    }

    override fun onDestroy() {
        timerRunning = false; handler.removeCallbacksAndMessages(null)
        try { GlyphInCallService.currentCall?.unregisterCallback(callCallback) } catch (_: Exception) {}
        super.onDestroy()
    }

    override fun onResume() {
        super.onResume()
        MainActivity.isAppInForeground = true
    }

    override fun onPause() {
        super.onPause()
        if (isChangingSim) {
            // Keep it foreground logically during brief SIM swap jump
        } else {
            MainActivity.isAppInForeground = false
        }
    }

    override fun onBackPressed() { if (isIncoming) { /* ignore back during ringing */ } else { finish() } }
    override fun onUserLeaveHint() { super.onUserLeaveHint(); if (!isIncoming) finish() }

    // ── Incoming Call Overlay ─────────────────────────────────────────────────

    private fun buildIncomingOverlay() {
        val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
        val useSlide = prefs.getString("flutter.answer_method", "slide") == "slide"

        incomingOverlay = FrameLayout(this).apply {
            setBackgroundColor(Color.parseColor("#141218"))
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
        
        val headerText = if (selectedSimLabel != null) "Call via <font color='#00E676'>$selectedSimLabel</font> from" else "Call from"
        
        content.addView(TextView(this).apply {
            text = android.text.Html.fromHtml(headerText, android.text.Html.FROM_HTML_MODE_LEGACY)
            setTextColor(Color.parseColor("#B0B0B0"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        })

        // ── Avatar ──
        val avatarSize = dp(110)
        val avatarBg = FrameLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(Color.parseColor("#3D3548")) }
            layoutParams = LinearLayout.LayoutParams(avatarSize, avatarSize).apply { gravity = Gravity.CENTER_HORIZONTAL; topMargin = dp(24) }
        }
        val avText = TextView(this).apply {
            text = if (contactName?.isNotEmpty() == true) contactName.first().uppercase() else if (number.isNotEmpty()) number.first().toString() else "?"
            setTextColor(Color.parseColor("#D0BCFF"))
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
            setTextColor(Color.WHITE)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 44f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(16) }
        })

        // Mobile 077 049 9787
        content.addView(TextView(this).apply {
            text = if (contactName != null) "Mobile $number" else ""
            setTextColor(Color.parseColor("#B0B0B0"))
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
                setColor(Color.parseColor("#28252C"))
                cornerRadius = dp(24).toFloat()
            }
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, dp(48)).apply {
                bottomMargin = dp(48)
            }
            setPadding(dp(20), 0, dp(24), 0)
            setOnClickListener { showQuickResponseDialog() }
        }
        
        msgButton.addView(ImageView(this).apply {
            setImageResource(android.R.drawable.sym_action_chat)
            setColorFilter(Color.parseColor("#D0BCFF"))
            layoutParams = LinearLayout.LayoutParams(dp(20), dp(20)).apply { rightMargin = dp(8) }
        })
        
        msgButton.addView(TextView(this).apply {
            text = "Message"
            setTextColor(Color.parseColor("#D0BCFF"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
        })
        
        content.addView(msgButton)

        if (useSlide) {
            content.addView(buildSlideToAnswer())
        } else {
            content.addView(buildAnswerDeclineButtons())
        }

        incomingOverlay.addView(content, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT
        ))
        rootLayout.addView(incomingOverlay, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT
        ))
    }

    private fun showQuickResponseDialog() {
        val dialog = android.app.Dialog(this).apply {
            requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
            setContentView(LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                background = GradientDrawable().apply {
                    setColor(Color.parseColor("#2A262D"))
                    cornerRadius = dp(16).toFloat()
                }
                
                val msgs = arrayOf("In class", "I'll call you back.", "I'll call you later.", "In bus", "Write your own...")
                msgs.forEachIndexed { index, msg ->
                    addView(TextView(context).apply {
                        text = msg
                        setTextColor(Color.WHITE)
                        setTextSize(TypedValue.COMPLEX_UNIT_SP, 18f)
                        setPadding(dp(24), dp(16), dp(24), dp(16))
                        setOnClickListener {
                            if (index < msgs.size - 1) {
                                GlyphInCallService.currentCall?.reject(true, msg)
                            } else {
                                GlyphInCallService.currentCall?.reject(false, null)
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

    private fun buildSlideToAnswer(): FrameLayout {
        val container = FrameLayout(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, dp(90)
            ).apply { leftMargin = dp(24); rightMargin = dp(24); bottomMargin = dp(100) }
        }

        // Track Background
        val trackBg = FrameLayout(this).apply {
            background = GradientDrawable().apply {
                setColor(Color.parseColor("#2A262D"))
                cornerRadius = dp(45).toFloat()
            }
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }
        
        // Decline text (Left)
        trackBg.addView(TextView(this).apply {
            text = "Decline"
            setTextColor(Color.WHITE)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER_VERTICAL or Gravity.START
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.MATCH_PARENT).apply {
                leftMargin = dp(32)
            }
        })
        
        // Answer text (Right)
        trackBg.addView(TextView(this).apply {
            text = "Answer"
            setTextColor(Color.WHITE)
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
                setColor(Color.WHITE)
            }
            layoutParams = FrameLayout.LayoutParams(handleSize, handleSize).apply {
                gravity = Gravity.CENTER
            }
        }
        val phoneIcon = ImageView(this).apply {
             setImageResource(R.drawable.ic_call_end) // standard phone icon base
             setColorFilter(Color.parseColor("#34A853"))
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

    private fun buildAnswerDeclineButtons(): LinearLayout {
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
        GlyphInCallService.currentCall?.reject(false, null)
    }

    // ── Keypad toggle ────────────────────────────────────────────────────────

    private fun toggleKeypad() {
        isKeypadVisible = !isKeypadVisible
        keypadContainer.visibility = if (isKeypadVisible) View.VISIBLE else View.GONE
        updateControlStates()
    }

    private fun buildKeypadSection(): LinearLayout {
        val container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            visibility = View.GONE
            background = GradientDrawable().apply {
                setColor(Color.parseColor("#1D1A22"))
                cornerRadii = floatArrayOf(
                    dp(32).toFloat(), dp(32).toFloat(), 
                    dp(32).toFloat(), dp(32).toFloat(), 
                    0f, 0f, 0f, 0f
                )
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
            setTextColor(Color.parseColor("#B0B0B0"))
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
                        setColor(Color.parseColor("#141218"))
                    }
                    layoutParams = LinearLayout.LayoutParams(0, dp(64), 1f).apply {
                        setMargins(dp(6), dp(6), dp(6), dp(6))
                    }
                    
                    addView(TextView(this@InCallActivity).apply {
                        text = key; setTextColor(Color.WHITE)
                        setTextSize(TypedValue.COMPLEX_UNIT_SP, 28f)
                        typeface = Typeface.create("sans-serif", Typeface.NORMAL)
                        gravity = Gravity.CENTER
                    })
                    if (sub.isNotEmpty()) {
                        addView(TextView(this@InCallActivity).apply {
                            text = sub; setTextColor(Color.parseColor("#A0A0A0"))
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

    private fun buildUI() {
        rootLayout = FrameLayout(this).apply { setBackgroundColor(Color.parseColor("#141218")) }

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
            setTextColor(Color.parseColor("#B0B0B0")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
            gravity = Gravity.CENTER; visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
        }
        topSection.addView(simLabel)

        // Avatar
        val avatarSize = dp(110)
        val avatarContainer = FrameLayout(this).apply {
            background = GradientDrawable().apply { shape = GradientDrawable.OVAL; setColor(Color.parseColor("#3D3548")) }
            layoutParams = LinearLayout.LayoutParams(avatarSize, avatarSize).apply { gravity = Gravity.CENTER_HORIZONTAL; topMargin = dp(24) }
        }
        avatarText = TextView(this).apply {
            setTextColor(Color.parseColor("#D0BCFF")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 46f)
            typeface = Typeface.create("sans-serif-light", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }
        avatarContainer.addView(avatarText)
        topSection.addView(avatarContainer)

        nameText = TextView(this).apply {
            setTextColor(Color.WHITE); setTextSize(TypedValue.COMPLEX_UNIT_SP, 44f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(16); leftMargin = dp(16); rightMargin = dp(16) }
        }
        topSection.addView(nameText)

        numberText = TextView(this).apply {
            setTextColor(Color.parseColor("#B0B0B0")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER; visibility = View.GONE
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(4) }
        }
        topSection.addView(numberText)

        statusText = TextView(this).apply {
            text = "Calling…"; setTextColor(Color.parseColor("#80FFFFFF")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(8) }
        }
        topSection.addView(statusText)

        durationText = TextView(this).apply {
            setTextColor(Color.parseColor("#80FFFFFF")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            typeface = Typeface.create("sans-serif", Typeface.NORMAL); gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { topMargin = dp(4) }
        }
        topSection.addView(durationText)

        mainContent.addView(topSection)

        // ── Flexible Spacer (pushes controls to the bottom) ──
        mainContent.addView(View(this).apply { layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f) })

        // ── Single row: Mute · Keypad · Speaker · More ──
        mainContent.addView(buildControlsRow())

        // ── Spacer ──
        mainContent.addView(View(this).apply { layoutParams = LinearLayout.LayoutParams(0, dp(20)) })

        // ── End Call ──
        mainContent.addView(buildEndCallButton())

        // Add main flow to root
        rootLayout.addView(mainContent, FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))
        
        // Add keypad overlay on top of everything
        keypadContainer = buildKeypadSection()
        rootLayout.addView(keypadContainer)
        
        setContentView(rootLayout)
    }

    private fun buildControlsRow(): LinearLayout {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { leftMargin = dp(16); rightMargin = dp(16) }
        }

        val m = makeBtn(R.drawable.ic_mic_off, "Mute") { toggleMute() }
        muteBtn = m.first; muteIcon = m.second; muteLabel = m.third
        row.addView(wrap(muteBtn, muteLabel))

        val k = makeBtn(R.drawable.ic_dialpad, "Keypad") { toggleKeypad() }
        keypadBtn = k.first; keypadIcon = k.second; keypadLabel = k.third
        row.addView(wrap(keypadBtn, keypadLabel))

        val s = makeBtn(R.drawable.ic_volume_up, "Speaker") { cycleSpeaker() }
        speakerBtn = s.first; speakerIcon = s.second; speakerLabel = s.third
        row.addView(wrap(speakerBtn, speakerLabel))

        val mo = makeBtn(R.drawable.ic_more_vert, "More") { showMoreMenu() }
        moreBtn = mo.first; moreIcon = mo.second; moreLabel = mo.third
        row.addView(wrap(moreBtn, moreLabel))

        return row
    }

    private fun makeBtn(iconRes: Int, label: String, onClick: () -> Unit): Triple<LinearLayout, ImageView, TextView> {
        val icon = ImageView(this).apply {
            setImageResource(iconRes); setColorFilter(Color.WHITE)
            layoutParams = LinearLayout.LayoutParams(dp(28), dp(28))
        }
        val btn = LinearLayout(this).apply {
            background = GradientDrawable().apply { 
                shape = GradientDrawable.RECTANGLE
                cornerRadius = dp(24).toFloat()
                setColor(Color.parseColor("#2B2930")) 
            }
            gravity = Gravity.CENTER; addView(icon)
            layoutParams = LinearLayout.LayoutParams(dp(72), dp(72))
            setOnClickListener { onClick() }
        }
        val lbl = TextView(this).apply {
            text = label; setTextColor(Color.parseColor("#B0B0B0")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f)
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

    private fun buildEndCallButton(): LinearLayout {
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

    private fun showMoreMenu() {
        val dialog = android.app.Dialog(this)
        dialog.requestWindowFeature(android.view.Window.FEATURE_NO_TITLE)
        val sheet = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = GradientDrawable().apply {
                setColor(Color.parseColor("#2B2930"))
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
                text = txt; setTextColor(Color.parseColor("#E6E1E5")); setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
                typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
                setPadding(dp(20), dp(16), dp(20), dp(16))
                background = GradientDrawable().apply { setColor(Color.parseColor("#36343B")); cornerRadius = dp(12).toFloat() }
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { bottomMargin = dp(8) }
                setOnClickListener { onClick(); dialog.dismiss() }
            })
        }

        // Add call — always visible, but disabled when not active
        val addCallTv = TextView(this@InCallActivity).apply {
            text = "Add call"
            setTextColor(if (isCallActive) Color.parseColor("#E6E1E5") else Color.parseColor("#5E5E5E"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            typeface = Typeface.create("sans-serif-medium", Typeface.NORMAL)
            setPadding(dp(20), dp(16), dp(20), dp(16))
            background = GradientDrawable().apply { setColor(Color.parseColor("#36343B")); cornerRadius = dp(12).toFloat() }
            layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT).apply { bottomMargin = dp(8) }
            isClickable = isCallActive
            if (isCallActive) { setOnClickListener { dialog.dismiss() } }
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

    private fun dp(v: Int): Int = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v.toFloat(), resources.displayMetrics).toInt()
}
