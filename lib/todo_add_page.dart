//import 'dart:js';

import 'package:flutter/material.dart';


class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(),
            Container(
              width: screenWidth * 1,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: screenWidth * 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
              child: Text('キャンセル'),
              ),
            )
          ],
        )
      ),
    );
  }
}