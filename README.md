# Flutter Example Template

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)
[![Build](https://github.com/jaredsburrows/flutter-gradle-app-template/workflows/build/badge.svg)](https://github.com/jaredsburrows/flutter-gradle-app-template/actions)
[![Twitter Follow](https://img.shields.io/twitter/follow/jaredsburrows.svg?style=social)](https://twitter.com/jaredsburrows)

Gradle + Intellij + Flutter

### Updates

**Dart**

    $ dart pub upgrade --null-safety

**Flutter**

    $ flutter upgrade
    $ flutter pub upgrade --null-safety

## Build the Android app

**Debug**

    $ flutter build apk --debug

**Release**

    $ flutter build apk --release --obfuscate --split-debug-info build/app/outputs/symbols-apk/ --target-platform android-arm64

## Build the iOS app

**Debug**

    $ flutter build ios --debug --no-codesign

**Release**

    $ flutter build ios --release --obfuscate --split-debug-info build/ios/outputs/symbols

## Build the Web app

**Debug/Release**

    $ flutter build web

## Testing

**Run unit tests with coverage**

    $ flutter test --coverage

## Reports

**Run analyzer**

    $ flutter analyze

## License

    Copyright (C) 2021 Jared Burrows

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
