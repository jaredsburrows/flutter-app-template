# Flutter Example Template

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)
[![Build](https://github.com/jaredsburrows/flutter-app-template/actions/workflows/build.yml/badge.svg)](https://github.com/jaredsburrows/flutter-app-template/actions/workflows/build.yml)
[![Twitter Follow](https://img.shields.io/twitter/follow/jaredsburrows.svg?style=social)](https://twitter.com/jaredsburrows)

Gradle + Intellij + Flutter

## Setup

**Flutter**

```shell
rm -f ios/Podfile.lock
rm -f pubspec.lock
flutter upgrade
flutter pub get
flutter pub upgrade
```

**Build All**

```shell
flutter build apk --debug
flutter build ios --debug --no-codesign
flutter build web
```

## Build the Android app

**Debug**

```shell
flutter build apk --debug
```

**Release APK**

```shell
flutter build apk --release --obfuscate --split-debug-info build/app/outputs/symbols-apk/ --target-platform android-arm64
```

**Release Bundle**

```shell
flutter build appbundle --release --obfuscate --split-debug-info build/app/outputs/symbols-appbundle --target-platform android-arm64
```

## Build the iOS app

**Debug**

```shell
flutter build ios --debug --no-codesign
```

**Release**

```shell
flutter build ios --release --obfuscate --split-debug-info build/ios/outputs/symbols
```

## Build the Web app

**Debug/Release**

```shell
flutter build web
```

## Testing

**Run unit tests with coverage**

```shell
flutter test --test-randomize-ordering-seed=random --coverage
```

## Integration Testing

**Start chromedriver**
```shell
chromedriver --port=4444
```

**Run integration tests**

```shell
flutter drive \
 --driver=test_driver/integration_test.dart \
 --target=integration_test/all_tests.dart \
 -d web-server
```

## Reports

**Run analyzer**

```shell
flutter analyze
```

## Local Debug Run

```shell
rm -f pubspec.lock && \
flutter upgrade && \
flutter pub get && \
flutter pub upgrade --major-versions && \

osv-scanner -r . && \

dart format . && \
dart fix --dry-run && \
dart fix --apply && \

flutter analyze && \

flutter test --test-randomize-ordering-seed=random && \

flutter drive \
 --driver=test_driver/integration_test.dart \
 --target=integration_test/all_tests.dart \
 -d web-server
```

## Local Test Run

Run locally

```shell
flutter build web --wasm --release --base-href /
flutter run -d chrome --release
```

Anyone on network

```shell
flutter run -d web-server --release --web-port 8080 --web-hostname 0.0.0.0
```

## Deploy

```shell
flutter build web --wasm --release --base-href /
firebase deploy
```
