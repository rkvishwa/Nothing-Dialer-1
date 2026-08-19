package com.rkkvishva.nothing_dialer

/** Bumped when Android ContactsProvider reports contact/photo changes. */
object ContactsSyncState {
    @Volatile
    var generation: Long = 0L
        private set

    fun notifyContactsChanged() {
        generation++
    }
}
