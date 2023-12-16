import 'package:flutter/material.dart';

/// Settings screen used to show setting data
class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              child: const Text('Click here'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
