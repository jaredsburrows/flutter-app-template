import 'package:flutter/material.dart';

import 'account_page.dart';
import 'home_page.dart';
import 'settings_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(title: 'Flutter Template'),
      routes: <String, WidgetBuilder>{
        SettingsPage.ROUTE_NAME: (BuildContext context) => SettingsPage(),
        AccountPage.ROUTE_NAME: (BuildContext context) => AccountPage(),
      },
    );
  }
}
