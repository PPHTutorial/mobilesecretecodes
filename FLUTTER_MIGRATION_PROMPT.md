# Flutter Project Migration Prompt Template

Use this prompt when you need to migrate an old Flutter project to modern Flutter 3.x standards:

---

## Migration Prompt:

"Please migrate my Flutter project to the latest Flutter 3.x standards with the following comprehensive changes:

**1. Update Flutter SDK and Dependencies:**
   - Update SDK constraint from `>=2.12.0 <3.0.0` to `>=3.0.0 <4.0.0`
   - Update all dependencies to their latest compatible versions
   - Replace deprecated packages (e.g., `share` → `share_plus`)
   - Update `flutter_lints` to latest version (^3.0.1)
   - Modernize pubspec.yaml structure and formatting

**2. Migrate Android Build System:**
   - Convert all Gradle files from Groovy (.gradle) to Kotlin DSL (.kts):
     * `android/build.gradle` → `android/build.gradle.kts`
     * `android/app/build.gradle` → `android/app/build.gradle.kts`
     * `android/settings.gradle` → `android/settings.gradle.kts`
   - Use modern plugin management in settings.gradle.kts
   - Update build.gradle.kts with:
     * Namespace declaration (move package from AndroidManifest.xml)
     * Java 11 compatibility (instead of Java 8)
     * Modern Android configurations (minSdk 24, targetSdk 35)
     * MultiDex support
     * ProGuard configuration
   - Update Gradle wrapper to latest version (8.12)
   - Update gradle.properties with modern JVM arguments

**3. Modernize Android Configuration:**
   - Remove `package` attribute from AndroidManifest.xml (use namespace in build.gradle.kts)
   - Update MainActivity.kt package structure if needed
   - Ensure proper namespace consistency across all Android files
   - Create proguard-rules.pro file if missing

**4. Modernize Dart Code:**
   - Replace all `Key? key` with `super.key` in widget constructors
   - Update deprecated API calls (e.g., `launchUrlString` → `launchUrl` with Uri.parse)
   - Update imports from deprecated packages
   - Modernize main.dart initialization (async main, proper WidgetsFlutterBinding, etc.)
   - Update analysis_options.yaml to latest standards

**5. Fix Build Issues:**
   - Run `flutter pub upgrade` to fix dependency conflicts
   - Resolve any package version incompatibilities
   - Fix generated_plugin_registrant.dart if needed
   - Ensure all deprecated APIs are updated

**6. Verification:**
   - Clean build cache: `flutter clean`
   - Get dependencies: `flutter pub get`
   - Verify build: `flutter build apk --debug`
   - Ensure no linter errors remain

**Please make all these changes comprehensively across the entire project, ensuring nothing is left untouched. The goal is a fully modernized Flutter 3.x project that builds and runs successfully.**"

---

## Quick Reference - Key Migration Steps:

### Files to Convert:
- ✅ `pubspec.yaml` - SDK version + dependencies
- ✅ `android/build.gradle` → `build.gradle.kts`
- ✅ `android/app/build.gradle` → `build.gradle.kts`
- ✅ `android/settings.gradle` → `settings.gradle.kts`
- ✅ `AndroidManifest.xml` - Remove package attribute
- ✅ `MainActivity.kt` - Update package/namespace
- ✅ All Dart files - `Key? key` → `super.key`
- ✅ `analysis_options.yaml` - Update to latest

### Key Configuration Changes:
- **SDK**: `>=3.0.0 <4.0.0`
- **Java**: Version 11 (not 8)
- **minSdk**: 24
- **targetSdk**: 35
- **Gradle**: 8.12
- **Kotlin**: 2.1.0
- **Android Gradle Plugin**: 8.7.3

### Common Package Replacements:
- `share` → `share_plus`
- `url_launcher` methods updated
- All packages updated to latest compatible versions

---

## After Migration Checklist:

1. ✅ `flutter clean`
2. ✅ `flutter pub get`
3. ✅ `flutter pub upgrade` (if conflicts)
4. ✅ `flutter build apk --debug` (verify build)
5. ✅ Check for linter errors
6. ✅ Test app runs successfully

---

Use this prompt template for any old Flutter project that needs complete migration!

