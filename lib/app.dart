import 'package:flutter/material.dart';
import 'package:work_out/views/root.dart';
import 'package:work_out/views/add/action/action.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '训练记录',
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/add':
            return MaterialPageRoute<void>(
              settings: settings,
              builder: (BuildContext context) => AddAction(text: settings.arguments)
            );
          default:
            return MaterialPageRoute<void>(
              settings: settings,
              builder: (BuildContext context) => Root()
            );
        }
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
