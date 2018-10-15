import 'package:flutter/material.dart';

import './plan/plan.dart';

class MainFrame extends StatefulWidget {
  MainFrame({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new MainFrameState();
}

class MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('计划'),
      ),
      body: new Plan(),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            title: new Text('计划'),
            icon: new Icon(Icons.schedule),
          ),
          new BottomNavigationBarItem(
            title: new Text('记录'),
            icon: new Icon(Icons.today),
          ),
          new BottomNavigationBarItem(
            title: new Text('设置'),
            icon: new Icon(Icons.settings),
          ),
        ],
        onTap: (index) {
          const MAP = <int, String>{
            0: '/plan',
            1: '/record',
            2: '/setting',
          };
          if (index == 0) {
            return;
          }
          Navigator.pushNamed(context, MAP[index]);
        },
      ),
    );
  }
}
