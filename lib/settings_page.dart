import 'package:flutter/material.dart';

/// Settings screen used to show setting data
class SettingsPage extends StatelessWidget {
  static const String ROUTE_NAME = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              child: Text('Click here'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Hello!'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
