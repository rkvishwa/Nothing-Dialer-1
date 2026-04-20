package com.rkkvishva.nothing_dialer

import android.Manifest
import android.app.role.RoleManager
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.speech.RecognizerIntent
import android.provider.Settings
import android.telecom.Call
import android.telecom.CallAudioState
import android.telecom.PhoneAccountHandle
import android.telecom.TelecomManager
import android.util.Log
import android.widget.Toast
import androidx.core.app.ActivityCompat
import io.flutter.embedding.android.FlutterActivity
import java.util.Locale
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    companion object {
        const val TAG = "NothingDialer"
        const val CHANNEL = "nothing_dialer/control"
        const val REQUEST_DEFAULT_DIALER = 1001
        const val REQUEST_CALL_PHONE = 1002
        const val REQUEST_PICK_RINGTONE = 1003
        const val REQUEST_VOICE_SEARCH = 1004
        const val EXTRA_OPEN_TAB = "open_tab"

        var isAppInForeground = false

        @Volatile
        var pendingLaunchTab: String? = null
    }

    private var methodChannel: MethodChannel? = null
    private var pendingCallNumber: String? = null
    private var pendingSimIndex: Int? = null
    private var pendingDialpadNumber: String? = null
    private var ringtoneResult: MethodChannel.Result? = null
    private var voiceSearchResult: MethodChannel.Result? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        extractLaunchExtras(intent)
        handleDialpadIntent(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        extractLaunchExtras(intent)
        handleDialpadIntent(intent)
    }

    private fun extractLaunchExtras(intent: Intent?) {
        val tab = intent?.getStringExtra(EXTRA_OPEN_TAB)
        if (!tab.isNullOrEmpty()) pendingLaunchTab = tab
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Cache the engine so GlyphInCallService can send commands to Dart.
        io.flutter.embedding.engine.FlutterEngineCache.getInstance()
            .put(GlyphInCallService.ENGINE_ID, flutterEngine)

        methodChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger, CHANNEL
        )
        flushPendingDialpadRequest()

        methodChannel!!.setMethodCallHandler { call, result ->
            when (call.method) {
                "isDefaultDialer" -> {
                    val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
                    result.success(tm.defaultDialerPackage == packageName)
                }
                "requestDefaultDialer" -> {
                    requestDefaultDialerRole()
                    result.success(null)
                }

                // ── SIM Management ──────────────────────────────────────
                "getSimCards" -> {
                    result.success(getSimCards())
                }
                "placeCallWithSim" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: ""
                    val simIndex = (args?.get("simIndex") as? Number)?.toInt() ?: 0
                    if (number.isNotEmpty()) {
                        placeCallWithSim(number, simIndex)
                        result.success(null)
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }

                // Legacy — places call without SIM selection
                "placeCall" -> {
                    val number = call.arguments as? String ?: ""
                    if (number.isNotEmpty()) {
                        placeCall(number)
                        result.success(null)
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }

                // ── Call Controls ────────────────────────────────────────
                "hangUp" -> {
                    GlyphInCallService.currentCall?.disconnect()
                    result.success(null)
                }
                "toggleMute" -> {
                    val service = GlyphInCallService.instance
                    if (service != null) {
                        val muted = !(service.callAudioState?.isMuted ?: false)
                        service.setMuted(muted)
                        result.success(muted)
                    } else {
                        result.success(false)
                    }
                }
                "setAudioRoute" -> {
                    val route = (call.arguments as? Number)?.toInt()
                        ?: CallAudioState.ROUTE_EARPIECE
                    GlyphInCallService.instance?.setAudioRoute(route)
                    result.success(null)
                }
                "getAudioState" -> {
                    val state = GlyphInCallService.instance?.callAudioState
                    result.success(mapOf(
                        "isMuted" to (state?.isMuted ?: false),
                        "route" to (state?.route ?: CallAudioState.ROUTE_EARPIECE),
                        "supportedRoutes" to (state?.supportedRouteMask
                            ?: CallAudioState.ROUTE_EARPIECE)
                    ))
                }
                "sendDtmf" -> {
                    val digit = (call.arguments as? String)?.firstOrNull()
                    if (digit != null) {
                        GlyphInCallService.currentCall?.playDtmfTone(digit)
                        GlyphInCallService.currentCall?.stopDtmfTone()
                    }
                    result.success(null)
                }
                "getCallState" -> {
                    val currentCall = GlyphInCallService.currentCall
                    if (currentCall != null) {
                        val handle = currentCall.details?.handle
                        val number = handle?.schemeSpecificPart ?: "Unknown"
                        val contactName = getContactName(number)
                        result.success(mapOf(
                            "state" to currentCall.state,
                            "number" to number,
                            "contactName" to contactName,
                            "simLabel" to getSimLabelForCall(currentCall)
                        ))
                    } else {
                        result.success(null)
                    }
                }
                "returnToCall" -> {
                    val intent = Intent(this@MainActivity, InCallActivity::class.java).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_REORDER_TO_FRONT)
                    }
                    startActivity(intent)
                    result.success(null)
                }
                "clearMissedCalls" -> {
                    MissedCallNotifier.cancel(this@MainActivity)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                        try {
                            (getSystemService(TELECOM_SERVICE) as TelecomManager)
                                .cancelMissedCallsNotification()
                        } catch (_: Exception) {
                        }
                    }
                    result.success(null)
                }
                "consumePendingOpenTab" -> {
                    val tab = pendingLaunchTab
                    pendingLaunchTab = null
                    result.success(tab)
                }
                "openSmsApp" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: (call.arguments as? String) ?: ""
                    if (number.isNotEmpty()) {
                        val intent = Intent(Intent.ACTION_VIEW).apply {
                            data = android.net.Uri.parse("sms:$number")
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        try {
                            startActivity(intent)
                            result.success(true)
                        } catch (e: Exception) {
                            // Fallback to smsto:
                            try {
                                val fallbackIntent = Intent(Intent.ACTION_SENDTO).apply {
                                    data = android.net.Uri.parse("smsto:$number")
                                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                }
                                startActivity(fallbackIntent)
                                result.success(true)
                            } catch (e2: Exception) {
                                result.error("SMS_FAILED", "Could not open SMS app: ${e2.message}", null)
                            }
                        }
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }
                "pickRingtone" -> {
                    ringtoneResult = result
                    val intent = Intent(android.media.RingtoneManager.ACTION_RINGTONE_PICKER).apply {
                        putExtra(android.media.RingtoneManager.EXTRA_RINGTONE_TITLE, "Select contact ringtone")
                        putExtra(android.media.RingtoneManager.EXTRA_RINGTONE_SHOW_SILENT, true)
                        putExtra(android.media.RingtoneManager.EXTRA_RINGTONE_SHOW_DEFAULT, true)
                        putExtra(android.media.RingtoneManager.EXTRA_RINGTONE_TYPE, android.media.RingtoneManager.TYPE_RINGTONE)
                    }
                    startActivityForResult(intent, REQUEST_PICK_RINGTONE)
                }
                "addToExistingContact" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: ""
                    if (number.isNotEmpty()) {
                        val intent = Intent(Intent.ACTION_INSERT_OR_EDIT).apply {
                            type = android.provider.ContactsContract.Contacts.CONTENT_ITEM_TYPE
                            putExtra(android.provider.ContactsContract.Intents.Insert.PHONE, number)
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        try {
                            startActivity(intent)
                            result.success(true)
                        } catch (e: Exception) {
                            result.error("INTENT_FAILED", "Could not open contact picker", null)
                        }
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }
                "placeVideoCall" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: (call.arguments as? String) ?: ""
                    if (number.isNotEmpty()) {
                        placeVideoCall(number)
                        result.success(true)
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }
                "blockNumber" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: (call.arguments as? String) ?: ""
                    if (number.isNotEmpty()) {
                        try {
                            val values = android.content.ContentValues().apply {
                                put(android.provider.BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER, number)
                            }
                            contentResolver.insert(android.provider.BlockedNumberContract.BlockedNumbers.CONTENT_URI, values)
                            result.success(true)
                        } catch (e: Exception) {
                            result.error("BLOCK_FAILED", e.message, null)
                        }
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }
                "unblockNumber" -> {
                    val args = call.arguments as? Map<*, *>
                    val number = args?.get("number") as? String ?: (call.arguments as? String) ?: ""
                    if (number.isNotEmpty()) {
                        try {
                            var deleted = 0
                            try {
                                deleted = android.provider.BlockedNumberContract.unblock(this@MainActivity, number)
                            } catch (_: Exception) {
                                // Fallback to direct delete below.
                            }
                            if (deleted == 0) {
                                deleted = contentResolver.delete(
                                    android.provider.BlockedNumberContract.BlockedNumbers.CONTENT_URI,
                                    "${android.provider.BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER} = ?",
                                    arrayOf(number)
                                )
                            }
                            result.success(deleted > 0)
                        } catch (e: Exception) {
                            result.error("UNBLOCK_FAILED", e.message, null)
                        }
                    } else {
                        result.error("INVALID_NUMBER", "Number is empty", null)
                    }
                }
                "getBlockedNumbers" -> {
                    try {
                        val blockedNumbers = mutableListOf<String>()
                        contentResolver.query(
                            android.provider.BlockedNumberContract.BlockedNumbers.CONTENT_URI,
                            arrayOf(android.provider.BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER),
                            null,
                            null,
                            null
                        )?.use { cursor ->
                            val numberIndex = cursor.getColumnIndex(android.provider.BlockedNumberContract.BlockedNumbers.COLUMN_ORIGINAL_NUMBER)
                            if (numberIndex != -1) {
                                while (cursor.moveToNext()) {
                                    val number = cursor.getString(numberIndex)
                                    if (number != null) {
                                        blockedNumbers.add(number)
                                    }
                                }
                            }
                        }
                        result.success(blockedNumbers)
                    } catch (e: Exception) {
                        result.error("GET_BLOCKED_FAILED", e.message, null)
                    }
                }

                "openSoundSettings" -> {
                    try {
                        startActivity(Intent(Settings.ACTION_SOUND_SETTINGS))
                        result.success(true)
                    } catch (e: Exception) {
                        result.error("OPEN_FAILED", e.message, null)
                    }
                }
                "getRingtoneTitle" -> {
                    val uriString = call.arguments as? String
                    if (uriString != null) {
                        val uri = android.net.Uri.parse(uriString)
                        val ringtone = android.media.RingtoneManager.getRingtone(this, uri)
                        result.success(ringtone?.getTitle(this))
                    } else {
                        result.success(null)
                    }
                }
                "setContactRingtone" -> {
                    val args = call.arguments as? Map<*, *>
                    val contactId = args?.get("contactId") as? String
                    val ringtoneUri = args?.get("ringtoneUri") as? String
                    if (contactId != null) {
                        try {
                            val values = android.content.ContentValues()
                            values.put(android.provider.ContactsContract.Contacts.CUSTOM_RINGTONE, ringtoneUri)
                            val lookupUri = android.net.Uri.withAppendedPath(android.provider.ContactsContract.Contacts.CONTENT_URI, contactId)
                            contentResolver.update(lookupUri, values, null, null)
                            result.success(true)
                        } catch (e: Exception) {
                            result.error("SET_RINGTONE_FAILED", e.message, null)
                        }
                    } else {
                        result.error("INVALID_ARGS", "Contact ID is null", null)
                    }
                }
                "startVoiceSearch" -> {
                    voiceSearchResult = result
                    val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
                        putExtra(
                            RecognizerIntent.EXTRA_LANGUAGE_MODEL,
                            RecognizerIntent.LANGUAGE_MODEL_FREE_FORM
                        )
                        putExtra(
                            RecognizerIntent.EXTRA_LANGUAGE,
                            Locale.getDefault().toString()
                        )
                        putExtra(RecognizerIntent.EXTRA_PROMPT, "Speak to search")
                        putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 1)
                        // Do not set EXTRA_PREFER_OFFLINE: Google's default recognizer on some OEMs
                        // (e.g. Nothing) shows "Voice search isn't available" when offline packs
                        // are missing or incomplete, even if the system reports on-device support.
                    }
                    try {
                        startActivityForResult(intent, REQUEST_VOICE_SEARCH)
                    } catch (_: ActivityNotFoundException) {
                        // No speech recognizer on this device/profile.
                        voiceSearchResult?.error(
                            "NO_RECOGNIZER",
                            "No speech recognizer installed on this device. " +
                                "Install Google app or enable Device Speech Services.",
                            null
                        )
                        voiceSearchResult = null
                    } catch (e: Exception) {
                        Log.e(TAG, "startVoiceSearch error: ${e.message}")
                        voiceSearchResult?.error("VOICE_SEARCH_FAILED", e.message, null)
                        voiceSearchResult = null
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    // ── SIM Cards ─────────────────────────────────────────────────────────────

    private fun getSimCards(): List<Map<String, Any>> {
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        val accounts: List<PhoneAccountHandle> = try {
            tm.callCapablePhoneAccounts
        } catch (_: SecurityException) {
            return emptyList()
        }

        return accounts.mapIndexed { index, handle ->
            val label = try {
                tm.getPhoneAccount(handle)?.label?.toString() ?: "SIM ${index + 1}"
            } catch (_: Exception) { "SIM ${index + 1}" }

            mapOf(
                "index" to index,
                "label" to label,
                "slot" to (index + 1)
            )
        }
    }

    private fun getSimLabelForCall(call: Call): String? {
        val accountHandle = call.details?.accountHandle ?: return null
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        return try {
            tm.getPhoneAccount(accountHandle)?.label?.toString()
        } catch (_: Exception) { null }
    }

    // ── Place Call (with SIM selection) ────────────────────────────────────────

    private fun placeCallWithSim(number: String, simIndex: Int) {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE)
            != PackageManager.PERMISSION_GRANTED
        ) {
            pendingCallNumber = number
            pendingSimIndex = simIndex
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.CALL_PHONE),
                REQUEST_CALL_PHONE
            )
            return
        }

        val uri = android.net.Uri.parse("tel:$number")
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager

        try {
            val accounts = tm.callCapablePhoneAccounts
            val extras = Bundle()
            if (simIndex in accounts.indices) {
                extras.putParcelable(
                    TelecomManager.EXTRA_PHONE_ACCOUNT_HANDLE,
                    accounts[simIndex]
                )
            }
            Log.d(TAG, "Placing call to $number with SIM $simIndex")
            saveLastDialedNumber(number)
            tm.placeCall(uri, extras)
        } catch (e: SecurityException) {
            Log.e(TAG, "placeCallWithSim SecurityException: ${e.message}")
            Toast.makeText(this, "Phone permission required", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "placeCallWithSim error: ${e.message}")
            Toast.makeText(this, "Call failed: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    // ── Legacy placeCall (no SIM selection) ────────────────────────────────────

    private fun placeCall(number: String) {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE)
            != PackageManager.PERMISSION_GRANTED
        ) {
            pendingCallNumber = number
            pendingSimIndex = null
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.CALL_PHONE),
                REQUEST_CALL_PHONE
            )
            return
        }

        val uri = android.net.Uri.parse("tel:$number")
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager

        try {
            Log.d(TAG, "Placing call to $number (no SIM specified)")
            saveLastDialedNumber(number)
            tm.placeCall(uri, Bundle())
        } catch (e: SecurityException) {
            Log.e(TAG, "placeCall SecurityException: ${e.message}")
            Toast.makeText(this, "Phone permission required", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "placeCall error: ${e.message}")
            Toast.makeText(this, "Call failed: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    // ── Place Video Call ───────────────────────────────────────────────────────

    private fun placeVideoCall(number: String) {
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE)
            != PackageManager.PERMISSION_GRANTED
        ) {
            pendingCallNumber = number
            pendingSimIndex = null
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.CALL_PHONE),
                REQUEST_CALL_PHONE
            )
            return
        }

        val uri = android.net.Uri.parse("tel:$number")
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager

        try {
            val extras = Bundle().apply {
                putInt(TelecomManager.EXTRA_START_CALL_WITH_VIDEO_STATE, android.telecom.VideoProfile.STATE_BIDIRECTIONAL)
            }
            Log.d(TAG, "Placing video call to $number")
            saveLastDialedNumber(number)
            tm.placeCall(uri, extras)
        } catch (e: SecurityException) {
            Log.e(TAG, "placeVideoCall SecurityException: ${e.message}")
            Toast.makeText(this, "Phone permission required", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "placeVideoCall error: ${e.message}")
            Toast.makeText(this, "Call failed: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }


    // ── Contact Name Lookup ───────────────────────────────────────────────────

    private fun getContactName(phoneNumber: String): String? =
        ContactLookup.getContactName(this, phoneNumber)

    // ── Permission callbacks ──────────────────────────────────────────────────

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == REQUEST_CALL_PHONE) {
            if (grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                val number = pendingCallNumber
                val simIdx = pendingSimIndex
                if (number != null) {
                    if (simIdx != null) {
                        placeCallWithSim(number, simIdx)
                    } else {
                        placeCall(number)
                    }
                }
                pendingCallNumber = null
                pendingSimIndex = null
            } else {
                Toast.makeText(this, "Call permission denied", Toast.LENGTH_SHORT).show()
                pendingCallNumber = null
                pendingSimIndex = null
            }
        }
    }

    // ── Default Dialer Role ───────────────────────────────────────────────────

    private fun requestDefaultDialerRole() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val roleManager = getSystemService(RoleManager::class.java)
            if (roleManager.isRoleAvailable(RoleManager.ROLE_DIALER) &&
                !roleManager.isRoleHeld(RoleManager.ROLE_DIALER)
            ) {
                val intent = roleManager.createRequestRoleIntent(RoleManager.ROLE_DIALER)
                startActivityForResult(intent, REQUEST_DEFAULT_DIALER)
            } else if (roleManager.isRoleHeld(RoleManager.ROLE_DIALER)) {
                Toast.makeText(this, "Already set as default dialer", Toast.LENGTH_SHORT).show()
            }
        } else {
            val intent = Intent(TelecomManager.ACTION_CHANGE_DEFAULT_DIALER).apply {
                putExtra(
                    TelecomManager.EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME,
                    packageName
                )
            }
            startActivityForResult(intent, REQUEST_DEFAULT_DIALER)
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == REQUEST_PICK_RINGTONE) {
            if (resultCode == RESULT_OK && data != null) {
                val uri = data.getParcelableExtra<android.net.Uri>(android.media.RingtoneManager.EXTRA_RINGTONE_PICKED_URI)
                ringtoneResult?.success(uri?.toString())
            } else {
                ringtoneResult?.success(null)
            }
            ringtoneResult = null
        } else if (requestCode == REQUEST_VOICE_SEARCH) {
            if (resultCode == RESULT_OK && data != null) {
                val results = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS)
                val text = results?.firstOrNull()
                voiceSearchResult?.success(text)
            } else {
                voiceSearchResult?.success(null)
            }
            voiceSearchResult = null
        }
    }

    override fun onResume() {
        super.onResume()
        val tm = getSystemService(TELECOM_SERVICE) as TelecomManager
        val isDefault = tm.defaultDialerPackage == packageName
        methodChannel?.invokeMethod("onDefaultDialerStatus", isDefault)
        isAppInForeground = true
    }
    
    override fun onPause() {
        super.onPause()
        isAppInForeground = false
    }

    /**
     * The nothing_glyph_interface plugin's GlyphManager.unInit() calls
     * unbindService() on a service connection that may not be registered.
     * This is a bug in the plugin — we catch and ignore it so it doesn't
     * crash the entire app on activity destroy.
     */
    override fun onDestroy() {
        try {
            super.onDestroy()
        } catch (e: IllegalArgumentException) {
            Log.w(TAG, "Ignored GlyphManager unbind crash: ${e.message}")
        }
    }

    private fun handleDialpadIntent(intent: Intent?) {
        // Assistant / Gemini App Actions: place call directly (no dialpad).
        if (intent?.action == Intent.ACTION_CALL) {
            val data = intent.data
            if (data?.scheme == "tel") {
                val number = android.net.Uri.decode(data.schemeSpecificPart ?: "").trim()
                if (number.isNotEmpty()) {
                    placeCallWithSim(number, 0)
                }
                return
            }
        }

        val isAddCallRequest = intent?.getBooleanExtra("EXTRA_SHOW_DIALPAD", false) == true
        val data = intent?.data
        val isTelIntent = (intent?.action == Intent.ACTION_VIEW || intent?.action == Intent.ACTION_DIAL) &&
            data?.scheme == "tel"

        if (isAddCallRequest) {
            pendingDialpadNumber = ""
            flushPendingDialpadRequest()
            return
        }

        if (!isTelIntent) return
        val number = android.net.Uri.decode(data?.schemeSpecificPart ?: "")
        pendingDialpadNumber = number
        flushPendingDialpadRequest()
    }

    private fun flushPendingDialpadRequest() {
        val channel = methodChannel ?: return
        if (pendingDialpadNumber == null) return
        val numberToOpen = pendingDialpadNumber
        pendingDialpadNumber = null
        channel.invokeMethod("openDialpad", numberToOpen)
    }

    private fun saveLastDialedNumber(number: String) {
        val cleaned = number.trim()
        if (cleaned.isEmpty()) return
        getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            .edit()
            .putString("flutter.last_dialed_number", cleaned)
            .apply()
    }
}
