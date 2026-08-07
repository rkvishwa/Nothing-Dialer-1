package com.rkkvishva.nothing_dialer

import android.content.Context
import android.content.res.Configuration
import java.util.Locale

/**
 * Applies the app language from Flutter SharedPreferences ([app_locale] → `flutter.app_locale`)
 * so native screens (in-call UI) match Settings → Language.
 */
object DialerLocale {
    private const val FLUTTER_PREFS = "FlutterSharedPreferences"
    private const val LOCALE_KEY = "flutter.app_locale"
    private const val SYSTEM = "system"

    fun wrap(context: Context): Context {
        val stored = context.getSharedPreferences(FLUTTER_PREFS, Context.MODE_PRIVATE)
            .getString(LOCALE_KEY, null)
            ?.trim()
            .orEmpty()
        if (stored.isEmpty() || stored == SYSTEM) {
            return context
        }
        val locale = localeFromTag(stored)
        Locale.setDefault(locale)
        val config = Configuration(context.resources.configuration)
        config.setLocale(locale)
        return context.createConfigurationContext(config)
    }

    private fun localeFromTag(tag: String): Locale {
        val normalized = tag.replace('-', '_')
        val parts = normalized.split('_')
        return when {
            parts.size >= 2 -> Locale(parts[0], parts[1])
            else -> Locale(parts[0])
        }
    }
}
