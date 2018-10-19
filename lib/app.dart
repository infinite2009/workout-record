import 'package:flutter/material.dart';
import 'package:body_building/views/root.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '训练记录',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Root(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
