import 'package:flutter/material.dart';
import 'package:work_out/config/tab_nav_icons.dart';
import 'package:work_out/views/record/record.dart';
import 'package:work_out/views/setting/setting.dart';
import 'package:work_out/views/plan/plan.dart';
import 'package:work_out/views/test/test.dart';

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
      3: Test(),
    };
    return map[currentTabIndex];
  }

  _generateBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
