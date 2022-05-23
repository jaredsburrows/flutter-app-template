import 'package:flutter/material.dart';

/// Basic screen used to show account data
class AccountPage extends StatelessWidget {
  static const String routeName = '/account';

  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: const Center(
        child: Text('Account Screen'),
      ),
    );
  }
}
