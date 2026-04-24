package com.rkkvishva.nothing_dialer

import android.content.Context
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.os.Handler
import android.os.Looper
import android.util.Log

/**
 * Controls the device flashlight for call-state blink patterns using [CameraManager.setTorchMode].
 */
object TorchController {

    private const val TAG = "TorchController"

    private var cameraId: String? = null
    private var handler: Handler? = null
    private var intervalRunnable: Runnable? = null
    private var torchOn = false

    private fun resolveCameraId(context: Context): String? {
        cameraId?.let { return it }
        val cm = context.getSystemService(Context.CAMERA_SERVICE) as? CameraManager ?: return null
        try {
            for (id in cm.cameraIdList) {
                val chars = cm.getCameraCharacteristics(id)
                val flash = chars.get(CameraCharacteristics.FLASH_INFO_AVAILABLE) == true
                val facing = chars.get(CameraCharacteristics.LENS_FACING)
                if (flash && facing == CameraCharacteristics.LENS_FACING_BACK) {
                    cameraId = id
                    return id
                }
            }
            for (id in cm.cameraIdList) {
                if (cm.getCameraCharacteristics(id).get(CameraCharacteristics.FLASH_INFO_AVAILABLE) == true) {
                    cameraId = id
                    return id
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "resolveCameraId: ${e.message}")
        }
        return null
    }

    private fun setTorch(context: Context, on: Boolean) {
        val id = resolveCameraId(context) ?: return
        val cm = context.getSystemService(Context.CAMERA_SERVICE) as? CameraManager ?: return
        try {
            cm.setTorchMode(id, on)
            torchOn = on
        } catch (e: Exception) {
            Log.w(TAG, "setTorch($on): ${e.message}")
        }
    }

    private fun ensureTorchOff(context: Context) {
        if (!torchOn) return
        val app = context.applicationContext
        setTorch(app, false)
    }

    fun stop(context: Context) {
        intervalRunnable?.let { h -> handler?.removeCallbacks(h) }
        intervalRunnable = null
        handler = null
        ensureTorchOff(context)
    }

    fun startInterval(context: Context, intervalMs: Int) {
        val app = context.applicationContext
        stop(app)
        val ms = intervalMs.coerceIn(100, 3000)
        handler = Handler(Looper.getMainLooper())
        intervalRunnable = object : Runnable {
            override fun run() {
                setTorch(app, !torchOn)
                handler?.postDelayed(this, ms.toLong())
            }
        }
        handler?.post(intervalRunnable!!)
    }
}
