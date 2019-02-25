import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Test')
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30.0),
          child: MaterialButton(
            onPressed: () async {
              final result = await Navigator.pushNamed(context, '/add', arguments: 'test-route-param');

              print('go to add called!');

              Scaffold.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('$result')));
            },
            child: Text('Go to Add')
          )
        )
    );
  }
}
