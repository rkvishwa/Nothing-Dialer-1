package com.rkkvishva.nothing_dialer

import android.content.Context

/** Matches [lib/screens/sim_picker_sheet.dart] keys. */
object DefaultSimResolver {
    private const val KEY_MODE = "default_sim_mode"
    private const val KEY_INDEX = "default_sim_index"
    private const val MODE_FIXED = "fixed"

    /**
     * SIM index for placing a call from a context where the user cannot pick a SIM
     * (e.g. missed-call notification). Uses global default when [MODE_FIXED], else 0.
     */
    fun resolveSimIndexForOutgoing(context: Context): Int {
        val mode = FlutterPrefs.getString(context, KEY_MODE) ?: "ask"
        if (mode != MODE_FIXED) return 0
        return FlutterPrefs.getInt(context, KEY_INDEX) ?: 0
    }
}
