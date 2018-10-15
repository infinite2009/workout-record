import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State createState() => new SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Setting'),
      ),
      body: new Container(
        padding: const EdgeInsets.only(top: 60.0),
        child: new Text('TODO need implementation'),
      ),
    );
  }
}
