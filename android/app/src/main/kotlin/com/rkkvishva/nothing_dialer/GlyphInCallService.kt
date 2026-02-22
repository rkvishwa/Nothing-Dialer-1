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
