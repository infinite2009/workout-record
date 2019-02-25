import 'package:flutter/material.dart';
import 'package:work_out/views/plan/pie_chart_demo.dart';

class Plan extends StatefulWidget {
  Plan();

  @override
  _PlanState createState() => new _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2400.0,
      child: Column(
        children: <Widget>[
          Center(
            child: MaterialButton(
              child: Text('Push'),
              onPressed: () {
                Navigator.pushNamed(context, '/add');
              },
            ),
          ),
          Expanded(
            child: DonutAutoLabelChart.withSampleData(),
          ),
        ],
      ),
    );
  }
}
