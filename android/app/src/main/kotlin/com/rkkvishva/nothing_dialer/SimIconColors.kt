package com.rkkvishva.nothing_dialer

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.widget.FrameLayout
import android.widget.ImageView
import kotlin.math.pow

/**
 * Reads Flutter [sim_icon_colors] prefs and applies badge colors to in-call SIM rows.
 */
object SimIconColors {
    data class Resolved(
        val filled: Boolean,
        val shapeColor: Int,
        val glyphColor: Int,
    )

    private fun styleKey(index: Int) = "sim_icon_style_$index"
    private fun lightKey(index: Int) = "sim_icon_color_light_$index"
    private fun darkKey(index: Int) = "sim_icon_color_dark_$index"

    fun resolve(context: Context, simIndex: Int, isDarkTheme: Boolean, themeOutline: Int): Resolved {
        val styleRaw = FlutterPrefs.getString(context, styleKey(simIndex))
        val light = FlutterPrefs.getInt(context, lightKey(simIndex))
        val dark = FlutterPrefs.getInt(context, darkKey(simIndex))

        var style = when (styleRaw) {
            "outline" -> "outline"
            "fill" -> "fill"
            else -> null
        }
        if (style == null && (light != null || dark != null)) {
            style = "fill"
        }
        if (style == null) {
            return Resolved(filled = false, shapeColor = themeOutline, glyphColor = themeOutline)
        }

        val argb = when {
            isDarkTheme -> dark ?: light
            else -> light ?: dark
        } ?: themeOutline

        return if (style == "fill") {
            Resolved(
                filled = true,
                shapeColor = argb,
                glyphColor = contentOnAccent(argb),
            )
        } else {
            Resolved(filled = false, shapeColor = argb, glyphColor = argb)
        }
    }

    fun applySimRowIcon(
        container: FrameLayout,
        icon: ImageView,
        resolved: Resolved,
        strokeDp: Int,
    ) {
        val strokePx = (strokeDp * container.resources.displayMetrics.density).toInt()
        val bg = GradientDrawable().apply {
            shape = GradientDrawable.OVAL
            if (resolved.filled) {
                setColor(resolved.shapeColor)
            } else {
                setColor(Color.TRANSPARENT)
                setStroke(strokePx, resolved.shapeColor)
            }
        }
        container.background = bg
        icon.setColorFilter(resolved.glyphColor)
    }

    private fun contentOnAccent(color: Int): Int {
        return if (luminance(color) > 0.45) {
            Color.parseColor("#1C1B1F")
        } else {
            Color.WHITE
        }
    }

    private fun luminance(color: Int): Double {
        fun chan(c: Int): Double {
            val v = c / 255.0
            return if (v <= 0.03928) v / 12.92 else ((v + 0.055) / 1.055).pow(2.4)
        }
        val r = chan(Color.red(color))
        val g = chan(Color.green(color))
        val b = chan(Color.blue(color))
        return 0.2126 * r + 0.7152 * g + 0.0722 * b
    }
}
