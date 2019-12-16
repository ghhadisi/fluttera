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
//Wrap 中内容默认是横向排列，通过调整 direction: Axis.horizontal, 属性修改排列方向；
class _WrapPageState extends State<WrapPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Wrap(
        spacing: 10,//当横向排列时 spacing: 10.0, 属性为横向 item 间距
        runSpacing: 20,//每一行之间的间距；当为纵向排列时，则相反。
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