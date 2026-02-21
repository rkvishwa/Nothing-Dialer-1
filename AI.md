# Project: Nothing Phone 1 - Outgoing Call Glyph Trigger

## 🎯 The Objective
Build a custom Android application that triggers the Nothing Phone 1 Glyph interface **only** during the dialing/ringing phase of an outgoing call. The lights must turn off immediately when the call is answered or disconnected.

## 🛠️ Development Environment & Tech Stack
* **Host OS:** macOS
* **IDE:** Google Antigravity (Agent-first development environment).
* **Target Device:** Physical Nothing Phone 1 (testing on emulators is not possible for Glyph hardware).
* **Framework:** Flutter (Dart).
* **Native Bridge:** Kotlin for Android system APIs.

## 🏗️ Core Architecture & Constraints
Standard Android `TelephonyManager` APIs group dialing and active calls under a single `CALL_STATE_OFFHOOK` state. To distinguish between "ringing" and "answered," standard background services will fail. 

**The Solution:** This app must be registered as a **Default Dialer**.
By acting as the default phone handler, Android grants access to the `InCallService` API, exposing the granular `Call.State.DIALING` and `Call.State.ACTIVE` states.

### 1. Permissions & Manifest
The `android/app/src/main/AndroidManifest.xml` must include:
* `android.permission.MANAGE_OWN_CALLS`
* `android.permission.READ_CALL_LOG`
* A service extending `InCallService` with the `android.permission.BIND_INCALL_SERVICE` permission and the `android.telecom.InCallService` intent filter.
* Metadata for the Nothing API Key (`<meta-data android:name="NothingKey" android:value="test" />` for local debugging).

### 2. State Logic (The `InCallService`)
The Kotlin service must override `onCallAdded` and attach a `Call.Callback` to monitor:
* `Call.STATE_DIALING`: Turn Lights ON.
* `Call.STATE_ACTIVE`: Turn Lights OFF.
* `Call.STATE_DISCONNECTED`: Turn Lights OFF.

### 3. Glyph SDK Integration
* Use the Flutter package `nothing_glyph_interface` from pub.dev to handle the Glyph logic. 
* Target the Phone 1 specific hardware (using `is20111()`).
* **Crucial Architecture Note:** Because the `InCallService` runs in the background natively (Kotlin), you will need to establish a `MethodChannel` between the Kotlin service and the Dart code to trigger the `nothing_glyph_interface` lighting commands. Alternatively, you can drop the Nothing `GlyphMatrixSDK.aar` directly into the Android `libs` folder and handle the lighting entirely in Kotlin to avoid waking the Flutter engine in the background. Choose the most efficient path.

### 4. Debugging Flag
For local testing without a production API key, the physical device must have debug mode enabled via ADB:
`adb shell settings put global nt_glyph_interface_debug_enable 1`

## 🤖 Instructions for the Antigravity Agent
1. **Validation Loop:** After applying code changes, automatically run `flutter analyze` and fix any resulting errors or lints before proceeding to the next step.
2. **Setup:** Add `nothing_glyph_interface` to `pubspec.yaml` and run `flutter pub get`. Verify the pub status is clean.
3. **UI Boilerplate:** Create a simple Flutter UI prompting the user to set the app as the Default Dialer on first launch.
4. **Native Code:** Generate the Kotlin code for the `InCallService` implementation inside the `android/app/src/main/kotlin/...` directory. 
5. **Bridging:** Set up the required `MethodChannel` or direct SDK integration to ensure the Kotlin `InCallService` can successfully trigger the hardware lights.
6. **Execution:** Do not attempt to use Android Studio. Run all builds using `flutter run` in the Antigravity terminal.