package com.rkkvishva.nothing_dialer

import android.content.Context
import org.json.JSONTokener

/**
 * Reads values written by the Flutter [shared_preferences] plugin from
 * `FlutterSharedPreferences`.
 */
object FlutterPrefs {
    private const val PREFS_NAME = "FlutterSharedPreferences"

    private fun rawString(context: Context, key: String): String? =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
            .getString("flutter.$key", null)

    private fun decode(raw: String?): Any? {
        if (raw == null || raw == "null") return null
        return try {
            JSONTokener(raw).nextValue()
        } catch (_: Exception) {
            raw.trim().removeSurrounding("\"")
        }
    }

    fun getString(context: Context, key: String): String? {
        val v = decode(rawString(context, key)) ?: return null
        return v.toString()
    }

    fun getInt(context: Context, key: String): Int? {
        val v = decode(rawString(context, key)) ?: return null
        return when (v) {
            is Int -> v
            is Long -> v.toInt()
            is Double -> v.toInt()
            else -> v.toString().toIntOrNull()
        }
    }
}
