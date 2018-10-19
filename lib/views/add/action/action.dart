import 'package:flutter/material.dart';

class AddAction extends StatefulWidget {
  @override
  createState() => AddActionState();
}

class AddActionState extends State<AddAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Title(
        child: Text('Hello new world!'),
        color: Colors.white,
      )),
      body: Container(
        child: MaterialButton(
          child: Text('Back'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
