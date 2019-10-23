import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mybutton.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WrapPageState();
  }

}

class _WrapPageState extends State<WrapPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Wrap(
        spacing: 10,
        runSpacing: 20,
//        verticalDirection: VerticalDirection.up,
//        runAlignment: WrapAlignment.end,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          MyButton("第 1 集"),
          MyButton("第 2 集"),
          MyButton("第 3 集"),
          MyButton("第 4 集"),
          MyButton("第 5 集"),
          MyButton("第 6 集第 6 集"),
          MyButton("第 7 集"),
          MyButton("第 8 集第 6 集"),
          MyButton("第 9 集"),
          MyButton("第 10 集"),
          MyButton("第 11 集"),
        ],
      ),
    );
  }

}