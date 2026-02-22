package com.rkkvishva.nothing_dialer

import android.Manifest
import android.app.role.RoleManager
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.telecom.Call
import android.telecom.CallAudioState
import android.telecom.PhoneAccountHandle
import android.telecom.TelecomManager
import android.util.Log
import android.widget.Toast
import androidx.core.app.ActivityCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    companion object {
        const val TAG = "NothingDialer"
        const val CHANNEL = "nothing_dialer/control"
        const val REQUEST_DEFAULT_DIALER = 1001
        const val REQUEST_CALL_PHONE = 1002
        const val REQUEST_PICK_RINGTONE = 1003
        
        var isAppInForeground = false
    }

    private var methodChannel: MethodChannel? = null
    private var pendingCallNumber: String? = null
    private var pendingSimIndex: Int? = null
    private var ringtoneResult: MethodChannel.Result? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Cache the engine so GlyphInCallService can send commands to Dart.
