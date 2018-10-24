import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State createState() => new SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      const SliverAppBar(
        pinned: true,
        expandedHeight: 50.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Demo'),
        ),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('grid item $index'),
            );
          },
          childCount: 20,
        ),
      ),
      SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text('list item $index'),
            );
          },
        ),
      ),
    ]);
  }
}
