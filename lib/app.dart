import 'package:flutter/material.dart';
import 'package:body_building/views/root.dart';
import 'package:body_building/views/plan/plan.dart';
import 'package:body_building/views/record/record.dart';
import 'package:body_building/views/setting/setting.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Workout Record',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Root(),
        '/plan': (BuildContext context) => Plan(),
        '/record': (BuildContext context) => AreaAndLineChart.withSampleData(),
        '/setting': (BuildContext context) => Setting(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
