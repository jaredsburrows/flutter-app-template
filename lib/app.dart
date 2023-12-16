import 'package:flutter/material.dart';

import 'account_page.dart';
import 'home_page.dart';
import 'settings_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Template',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(title: 'Flutter Template'),
      routes: <String, WidgetBuilder>{
        SettingsPage.routeName: (BuildContext context) => const SettingsPage(),
        AccountPage.routeName: (BuildContext context) => const AccountPage(),
      },
    );
  }
}
