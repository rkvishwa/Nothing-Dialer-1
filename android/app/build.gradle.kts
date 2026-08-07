import java.util.Properties
import org.jetbrains.kotlin.gradle.dsl.JvmTarget

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(keystorePropertiesFile.inputStream())
}

/** Nothing Glyph SDK key: "test" in repo; override in gitignored android/local.properties */
fun readNothingGlyphKey(): String {
    val localPropertiesFile = rootProject.file("local.properties")
    if (localPropertiesFile.exists()) {
        val local = Properties()
        localPropertiesFile.inputStream().use { local.load(it) }
        local.getProperty("nothing.glyph.key")?.trim()?.takeIf { it.isNotEmpty() }?.let {
            return it
        }
    }
    keystoreProperties.getProperty("nothingGlyphKey")?.trim()?.takeIf { it.isNotEmpty() }?.let {
        return it
    }
    return "test"
}

val nothingGlyphKey = readNothingGlyphKey()

android {
    namespace = "com.rkkvishva.nothing_dialer"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.rkkvishva.nothing_dialer"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        manifestPlaceholders["nothingGlyphKey"] = nothingGlyphKey
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties.getProperty("keyAlias")
            keyPassword = keystoreProperties.getProperty("keyPassword")
            val stFile = keystoreProperties.getProperty("storeFile")
            if (stFile != null) {
                storeFile = file(stFile)
            }
            storePassword = keystoreProperties.getProperty("storePassword")
        }
    }

    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("release")
            
            isMinifyEnabled = false
            isShrinkResources = false
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_17)
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Required for the call_log package
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    
    // Material Components for BottomSheetDialog
    implementation("com.google.android.material:material:1.11.0")
    
    // Nothing Ketchum SDK for native Glyph control
    compileOnly(files("libs/KetchumSDK_Community_20250805.jar"))
}
