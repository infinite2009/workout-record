import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello world'),
      ),
      body: new Container(
        child: new Center(
          child: new Text('I cannot help myself to saying "Hello world"'),
        ),
      ),
    );
  }
}
