import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator(this.navigatorKey, this.route, this.page);

  final GlobalKey<NavigatorState> navigatorKey;
  final String route;
  final Widget page;

  @override
  State<TabNavigator> createState() => new TabNavigatorState();
}

class TabNavigatorState extends State<TabNavigator> {
  @override
  Widget build(BuildContext context) {
    return new Navigator(
      key: this.widget.navigatorKey,
      initialRoute: '',
      onGenerateRoute: (RouteSettings settings) {
        print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
        print(this.widget.page);
        // run 2 times
        return new MaterialPageRoute(
          builder: (BuildContext context) => this.widget.page,
        );
      },
    );
  }
}
