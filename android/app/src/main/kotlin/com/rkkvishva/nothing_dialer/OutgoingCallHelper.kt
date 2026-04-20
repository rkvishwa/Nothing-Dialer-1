package com.rkkvishva.nothing_dialer

import android.Manifest
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.telecom.PhoneAccountHandle
import android.telecom.TelecomManager
import android.util.Log
import android.widget.Toast
import androidx.core.app.ActivityCompat

object OutgoingCallHelper {
    private const val TAG = "OutgoingCallHelper"

    fun placeCallWithDefaultSim(context: Context, number: String) {
        val app = context.applicationContext
        val cleaned = number.trim()
        if (cleaned.isEmpty()) return

        if (ActivityCompat.checkSelfPermission(app, Manifest.permission.CALL_PHONE)
            != PackageManager.PERMISSION_GRANTED
        ) {
            Log.w(TAG, "CALL_PHONE not granted; opening app")
            Toast.makeText(
                app,
                "Grant phone permission to call back",
                Toast.LENGTH_SHORT,
            ).show()
            val launch = Intent(app, MainActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP
                putExtra(MainActivity.EXTRA_OPEN_TAB, "recents")
            }
            app.startActivity(launch)
            return
        }

        val simIndex = DefaultSimResolver.resolveSimIndexForOutgoing(app)
        val uri = Uri.parse("tel:${Uri.encode(cleaned)}")
        val tm = app.getSystemService(TelecomManager::class.java) ?: return

        try {
            val accounts: List<PhoneAccountHandle> = tm.callCapablePhoneAccounts
            val extras = Bundle()
            if (simIndex in accounts.indices) {
                extras.putParcelable(
                    TelecomManager.EXTRA_PHONE_ACCOUNT_HANDLE,
                    accounts[simIndex],
                )
            }
            tm.placeCall(uri, extras)
        } catch (e: SecurityException) {
            Log.e(TAG, "placeCall SecurityException: ${e.message}")
            Toast.makeText(app, "Cannot place call", Toast.LENGTH_SHORT).show()
        } catch (e: Exception) {
            Log.e(TAG, "placeCall error: ${e.message}")
            Toast.makeText(app, "Call failed", Toast.LENGTH_SHORT).show()
        }
    }
}
