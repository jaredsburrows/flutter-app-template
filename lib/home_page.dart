import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              key: Key('counter'),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  // pop closes the drawer
                  Navigator.of(context).pop();

                  // Stop here if we are simply returning back to "home"
                  // if (routeName == "/") return;

                  // navigate to the route
                  // Navigator.of(context).pushNamed(routeName);
                });
              },
            ),
            AboutListTile(
              child: Text('About'),
              applicationName: 'Application Name',
              applicationVersion: 'v1.0.0',
              applicationIcon: Icon(Icons.adb),
              icon: Icon(Icons.info),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('increment'),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
