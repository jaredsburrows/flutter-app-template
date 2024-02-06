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
        primaryColor: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const HomePage(title: 'Flutter Template'),
      routes: <String, WidgetBuilder>{
        SettingsPage.routeName: (BuildContext context) => const SettingsPage(),
        AccountPage.routeName: (BuildContext context) => const AccountPage(),
      },
    );
  }
}
