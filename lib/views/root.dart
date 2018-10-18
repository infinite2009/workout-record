import 'package:flutter/material.dart';
import 'package:body_building/components/tab_navigator/tab_navigator.dart';
import 'package:body_building/config/routes.dart';
import 'package:body_building/config/tab_nav_icons.dart';

class Root extends StatefulWidget {
  Root({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new RootState();
}

class RootState extends State<Root> {
  int currentTabIndex = 0;
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: new GlobalKey<NavigatorState>(),
    1: new GlobalKey<NavigatorState>(),
    2: new GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async =>
      !await navigatorKeys[currentTabIndex].currentState.maybePop(),
      child: new Scaffold(
        body: new Stack(
          children: _generateOffstages(),
        ),
        bottomNavigationBar: _generateBottomNavigationBar(),
      ),
    );
  }

  _generateOffstages() {
    final offstages = <Widget>[];
    for (var i = 0, l = routes.length; i < l; i++) {
      offstages.add(new Offstage(
        offstage: currentTabIndex != i,
        child: new TabNavigator(
            navigatorKeys[i], routes[i]['name'], routes[i]['page']),
      ));
    }
    return offstages;
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
