package com.rkkvishva.nothing_dialer

import android.content.Context
import android.content.SharedPreferences
import org.json.JSONTokener

/**
 * Reads values written by the Flutter [shared_preferences] plugin from
 * `FlutterSharedPreferences`.
 *
 * Strings are stored with [SharedPreferences.Editor.putString].
 * Ints are stored with [SharedPreferences.Editor.putLong] (legacy + current plugin).
 */
object FlutterPrefs {
    private const val PREFS_NAME = "FlutterSharedPreferences"

    private fun prefs(context: Context): SharedPreferences =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    private fun prefKey(key: String): String = "flutter.$key"

    private fun rawString(context: Context, key: String): String? =
        prefs(context).getString(prefKey(key), null)

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
        val p = prefs(context)
        val fullKey = prefKey(key)
        // Flutter shared_preferences stores ints via putLong.
        if (p.contains(fullKey)) {
            try {
                return p.getLong(fullKey, 0L).toInt()
            } catch (_: ClassCastException) {
                // Fall through to string / typed int decoding.
            }
            try {
                return p.getInt(fullKey, 0)
            } catch (_: ClassCastException) {
                // Fall through.
            }
        }
        val v = decode(rawString(context, key)) ?: return null
        return when (v) {
            is Int -> v
            is Long -> v.toInt()
            is Double -> v.toInt()
            else -> v.toString().toIntOrNull()
        }
    }
}
