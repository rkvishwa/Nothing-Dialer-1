package com.rkkvishva.nothing_dialer

import android.content.Context
import android.graphics.Typeface
import android.util.Log
import android.widget.TextView
import org.json.JSONObject

/**
 * Loads dialer fonts from Flutter assets and applies [font_config] prefs.
 */
object DialerTypefaces {
    private const val TAG = "DialerTypefaces"
    private const val PREF_KEY = "font_config"

    private val cache = mutableMapOf<String, Typeface>()

    enum class Role {
        pageTitle,
        sectionHeader,
        primary,
        secondary,
        button,
        dialKey,
    }

    enum class Surface {
        recents,
        contacts,
        settings,
        dialpad,
        shell,
        defaultDialer,
        favourites,
        blocked,
        contactDetail,
        callHistory,
        sheets,
        inCall,
    }

    fun invalidateCache() {
        cache.clear()
    }

    fun apply(textView: TextView, role: Role, surface: Surface = Surface.inCall) {
        textView.typeface = typeface(textView.context, role, surface)
    }

    fun typeface(context: Context, role: Role, surface: Surface = Surface.inCall): Typeface {
        val choice = resolveChoice(context, surface, role)
        if (choice == "system") {
            return Typeface.DEFAULT
        }
        val assetPath = assetPathForChoice(choice, role) ?: return Typeface.DEFAULT
        return cache.getOrPut(assetPath) {
            try {
                Typeface.createFromAsset(context.assets, assetPath)
            } catch (e: Exception) {
                Log.w(TAG, "Failed to load $assetPath", e)
                Typeface.DEFAULT
            }
        }
    }

    private fun assetPathForChoice(choice: String, role: Role): String? = when (choice) {
        "ndot" -> if (role == Role.pageTitle || role == Role.sectionHeader) {
            "flutter_assets/assets/fonts/Ndot55Caps-Regular.otf"
        } else {
            "flutter_assets/assets/fonts/Ndot55-Regular.otf"
        }
        "serif", "inter" -> "flutter_assets/assets/fonts/RobotoSerif-Regular.ttf"
        // Noto is downloaded in Flutter via google_fonts; native in-call uses system.
        "noto" -> null
        else -> null
    }

    private fun resolveChoice(context: Context, surface: Surface, role: Role): String {
        val raw = FlutterPrefs.getString(context, PREF_KEY) ?: return "system"
        return try {
            val json = JSONObject(raw)
            val defaultChoice = json.optString("defaultChoice", "system").let { id ->
                if (id == "inter") "serif" else id
            }
            when (json.optString("applyMode", "titles_only")) {
                "entire_app" -> defaultChoice
                "titles_only" -> {
                    if (role == Role.pageTitle || role == Role.sectionHeader) {
                        defaultChoice
                    } else {
                        "system"
                    }
                }
                "customize" -> {
                    val custom = json.optJSONObject("custom")
                    val surfaceObj = custom?.optJSONObject(surface.name)
                    val cell = surfaceObj?.optString(role.name)?.takeIf { it.isNotEmpty() }
                    when (cell) {
                        "inter" -> "serif"
                        null -> defaultChoice
                        else -> cell
                    }
                }
                else -> defaultChoice
            }
        } catch (e: Exception) {
            Log.w(TAG, "Bad font_config JSON", e)
            "system"
        }
    }
}
