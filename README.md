# Flutter Example Template

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)
[![Build](https://github.com/jaredsburrows/flutter-app-template/actions/workflows/build.yml/badge.svg)](https://github.com/jaredsburrows/flutter-app-template/actions/workflows/build.yml)
[![Twitter Follow](https://img.shields.io/twitter/follow/jaredsburrows.svg?style=social)](https://twitter.com/jaredsburrows)

Gradle + Intellij + Flutter

## Setup Flutter

**Setup Flutter**

```shell
flutter upgrade
flutter pub get
flutter pub upgrade --null-safety
```
**Build All**

```shell
flutter build apk --debug --no-pub
flutter build ios --debug --no-codesign --no-pub
flutter build web --no-pub
```

## Build the Android app

**Debug**

```shell
flutter build apk --debug --no-pub
```

**Release APK**

```shell
flutter build apk --release --obfuscate --split-debug-info build/app/outputs/symbols-apk/ --target-platform android-arm64 --no-pub
```

**Release Bundle**

```shell
flutter build appbundle --release --obfuscate --split-debug-info build/app/outputs/symbols-appbundle --target-platform android-arm64 --no-pub
```

## Build the iOS app

**Debug**

```shell
flutter build ios --debug --no-codesign --no-pub
```

**Release**

```shell
flutter build ios --release --obfuscate --split-debug-info build/ios/outputs/symbols --no-pub
```

## Build the Web app

**Debug/Release**

```shell
flutter build web --no-pub
```

## Testing

**Run unit tests with coverage**

```shell
flutter test --coverage --no-pub
```

## Reports

**Run analyzer**

```shell
flutter analyze --no-pub
```

## License

```
Copyright (C) 2021 Jared Burrows

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
