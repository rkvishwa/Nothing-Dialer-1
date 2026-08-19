package com.rkkvishva.nothing_dialer

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager

/**
 * Swaps the home-screen launcher entry via [activity-alias] components.
 * Exactly one alias must be enabled at a time.
 */
object LauncherIconManager {

    const val VARIANT_DEFAULT = "default"
    const val VARIANT_LIGHT = "light"
    const val VARIANT_RED = "red"
    const val VARIANT_GREY = "grey"
    const val VARIANT_CREAM = "cream"
    const val VARIANT_OLD_PHONE = "old_phone"
    const val VARIANT_OLD_PHONE_LIGHT = "old_phone_light"

    private val ORDERED_VARIANTS = listOf(
        VARIANT_DEFAULT,
        VARIANT_LIGHT,
        VARIANT_RED,
        VARIANT_GREY,
        VARIANT_CREAM,
        VARIANT_OLD_PHONE,
        VARIANT_OLD_PHONE_LIGHT,
    )

    private val MANIFEST_ENABLED_BY_VARIANT = mapOf(
        VARIANT_DEFAULT to true,
        VARIANT_LIGHT to false,
        VARIANT_RED to false,
        VARIANT_GREY to false,
        VARIANT_CREAM to false,
        VARIANT_OLD_PHONE to false,
        VARIANT_OLD_PHONE_LIGHT to false,
    )

    private val ALIAS_SIMPLE_NAMES = mapOf(
        VARIANT_DEFAULT to "LauncherAliasDefault",
        VARIANT_LIGHT to "LauncherAliasLight",
        VARIANT_RED to "LauncherAliasRed",
        VARIANT_GREY to "LauncherAliasGrey",
        VARIANT_CREAM to "LauncherAliasCream",
        VARIANT_OLD_PHONE to "LauncherAliasOldPhone",
        VARIANT_OLD_PHONE_LIGHT to "LauncherAliasOldPhoneLight",
    )

    fun componentName(context: Context, variant: String): ComponentName {
        val simple = ALIAS_SIMPLE_NAMES[variant]
            ?: throw IllegalArgumentException("Unknown launcher icon variant: $variant")
        return ComponentName(context.packageName, "${context.packageName}.$simple")
    }

    /**
     * True when this build ships launcher [activity-alias] components.
     * Uses [PackageManager.MATCH_DISABLED_COMPONENTS] so disabled aliases still resolve
     * (otherwise [getActivityInfo] fails after the user switches away from [VARIANT_DEFAULT]).
     */
    private fun launcherAliasesInstalled(context: Context): Boolean {
        val pm = context.packageManager
        val flags = PackageManager.MATCH_DISABLED_COMPONENTS
        for (v in ORDERED_VARIANTS) {
            val cn = componentName(context, v)
            try {
                @Suppress("DEPRECATION")
                pm.getActivityInfo(cn, flags)
                return true
            } catch (_: PackageManager.NameNotFoundException) {
                // try next
            }
        }
        return false
    }

    /**
     * Returns the variant id for the alias that is currently the launcher entry.
     */
    fun getCurrentVariant(context: Context): String {
        if (!launcherAliasesInstalled(context)) {
            return VARIANT_DEFAULT
        }
        return enabledVariant(context) ?: VARIANT_DEFAULT
    }

    /**
     * If every launcher alias is disabled (can happen after an app update on
     * Android 16), re-enable [VARIANT_DEFAULT] so the home-screen icon works.
     */
    fun ensureLauncherEntry(context: Context): Boolean {
        if (!launcherAliasesInstalled(context)) {
            return false
        }
        if (enabledVariant(context) != null) {
            return true
        }
        return setVariant(context, VARIANT_DEFAULT)
    }

    /**
     * Enables [variant]'s alias and disables all others.
     *
     * Enables the target first so a crash or kill cannot leave zero launchers.
     *
     * @return false when this build has no launcher [activity-alias] nodes (debug/profile); true if applied.
     */
    fun setVariant(context: Context, variant: String): Boolean {
        if (variant !in ALIAS_SIMPLE_NAMES.keys) {
            throw IllegalArgumentException("Unknown launcher icon variant: $variant")
        }
        if (!launcherAliasesInstalled(context)) {
            return false
        }
        val pm = context.packageManager
        val flag = PackageManager.DONT_KILL_APP
        pm.setComponentEnabledSetting(
            componentName(context, variant),
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
            flag,
        )
        for (v in ORDERED_VARIANTS) {
            if (v == variant) continue
            pm.setComponentEnabledSetting(
                componentName(context, v),
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                flag,
            )
        }
        return true
    }

    private fun enabledVariant(context: Context): String? {
        val pm = context.packageManager
        for (variant in ORDERED_VARIANTS) {
            val cn = componentName(context, variant)
            val state = pm.getComponentEnabledSetting(cn)
            if (isEffectivelyEnabled(state, MANIFEST_ENABLED_BY_VARIANT[variant] == true)) {
                return variant
            }
        }
        return null
    }

    private fun isEffectivelyEnabled(state: Int, manifestEnabled: Boolean): Boolean {
        return when (state) {
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED -> true
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER,
            -> false
            else -> manifestEnabled
        }
    }
}
