import 'package:flutter/material.dart';

/// Basic screen used to show account data
class AccountPage extends StatelessWidget {
  static const String ROUTE_NAME = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Container(
        child: Center(
          child: Text('Account Screen'),
        ),
      ),
    );
  }
}
