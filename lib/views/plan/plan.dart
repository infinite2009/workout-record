import 'package:flutter/material.dart';

class Plan extends StatefulWidget {
  Plan();

  @override
  _PlanState createState() => new _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Title(
          child: new Text('计划'),
          color: Colors.blue,
        )
      ),
      body: new Container(
        child: new Center(
          child: new Text('TODO need implemetation'),
        ),
      ),
    );
  }
}
