import 'package:flutter/material.dart';
import 'package:flutter_app_template/app.dart';
import 'package:url_strategy/url_strategy.dart';

// https://github.com/flutter/flutter/issues/116936
bool isTesting = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!isTesting) {
    setPathUrlStrategy();
  }

  runApp(const App());
}
