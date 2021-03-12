import 'package:flutter/material.dart';

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('リストに追加する'),
        ),
      ),
    );
  }
}