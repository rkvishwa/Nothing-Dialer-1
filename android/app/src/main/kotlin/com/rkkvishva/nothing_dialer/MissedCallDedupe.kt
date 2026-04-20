package com.rkkvishva.nothing_dialer

/**
 * Avoids duplicate missed-call notifications when both Telecom's broadcast and
 * [GlyphInCallService] detect the same missed call within a short window.
 */
object MissedCallDedupe {
    private val keys = mutableSetOf<String>()
    private const val WINDOW_MS = 60_000L

    @Synchronized
    fun shouldShow(number: String): Boolean {
        val bucket = System.currentTimeMillis() / WINDOW_MS
        val key = "${number}_$bucket"
        if (key in keys) return false
        keys.add(key)
        if (keys.size > 100) keys.clear()
        return true
    }
}
