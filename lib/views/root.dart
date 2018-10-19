import 'package:flutter/material.dart';
import 'package:body_building/config/tab_nav_icons.dart';
import 'package:body_building/views/record/record.dart';
import 'package:body_building/views/setting/setting.dart';
import 'package:body_building/views/plan/plan.dart';

class Root extends StatefulWidget {
  Root({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new RootState();
}

class RootState extends State<Root> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _generateTab(),
      bottomNavigationBar: _generateBottomNavigationBar(),
    );
  }

  _generateTab() {
    final Map<int, Widget> map = {
      0: Plan(),
      1: AreaAndLineChart.withSampleData(),
      2: Setting(),
    };
    return map[currentTabIndex];
  }

  _generateBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentTabIndex,
      items: TabNavIcons.map(
        (e) {
          return new BottomNavigationBarItem(
            title: new Title(
              color: Colors.blue,
              child: new Text(e['title']),
            ),
            icon: new Icon(e['icon']),
          );
        },
      ).toList(),
      onTap: _onSelectTab,
    );
  }

  void _onSelectTab(index) {
    setState(() {
      this.currentTabIndex = index;
    });
  }
}
