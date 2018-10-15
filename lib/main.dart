import 'package:flutter/material.dart';

import './views/main-frame.dart';
import './views/plan/plan.dart';
import './views/setting/setting.dart';
import './views/record/record.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MainFrame(),
      routes: <String, WidgetBuilder>{
        '/plan': (BuildContext context) => new Plan(),
        '/setting': (BuildContext context) => new Setting(),
        '/record': (BuildContext context) => AreaAndLineChart.withSampleData(),
      },
    );
  }
}
