/*

https://www.imooc.com/article/295161

LimitedBox
源码分析
class LimitedBox extends SingleChildRenderObjectWidget {
  const LimitedBox({
    Key key,
    this.maxWidth = double.infinity,    // 最大宽度
    this.maxHeight = double.infinity,   // 最大高度
    Widget child,
  })
}
LimitedBox 主要是在不受父 Widget 限制时，通过 maxHeight / maxWidth 对子 Widget 的约束，且 maxHeight / maxWidth 必须 >= 0.0;


*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimitedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LimitedBoxPageState3();
  }
}

/*
LimitedBox 主要是在不受父 Widget 限制时，通过 maxHeight / maxWidth 对子 Widget 的约束，且 maxHeight / maxWidth 必须 >= 0.0;
* */
class LimitedBoxPageState extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox'),
      ),
      body: Container(
        child: Container(
          color: Colors.red,
            child: LimitedBox(
                maxWidth: 100,
                maxHeight: 100,

                child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.purple.withOpacity(0.4)))),
      ),
    );
  }
}

/*
* LimitedBox 父 Widget 无限制，子 Widget 宽高大于约束最大宽高；

* */
class LimitedBoxPageState2 extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox'),
      ),
      body: Container(
        child: Container(
            child: LimitedBox(
                maxWidth: 100,
                maxHeight: 100,
                child: Container(
                    width: 160,
                    height: 160,
                    color: Colors.orange.withOpacity(0.4)))),
      ),
    );
  }
}

/*
* LimitedBox 父 Widget 有限制时；无论 LimitedBox 设置限制最大宽高和子 Widget 宽高，均以父 Widget 宽高为准；

* */
class LimitedBoxPageState3 extends State<LimitedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox'),
      ),
      body: Container(

        child: Container(
            color: Colors.green,
            width: 200,
            height: 80,
            child: LimitedBox(
                maxWidth: 100,
                maxHeight: 100,
                child: Container(
                    width: 160,
                    height: 160,
                    color: Colors.orange
                ))

        ),
      ),
    );
  }
}
