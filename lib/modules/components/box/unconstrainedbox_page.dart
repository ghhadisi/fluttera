import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.imooc.com/article/295161

UnconstrainedBox 不会对子 Widget 进行约束限制，按照其子 Widget 大小进行绘制；小菜理解为去除父 Widget 的限制，让子 Widget 完全绘制；

1. alignment
      用于子 Widget 的对齐方向，可以通过 Alignment 或 AlignmentDirectional 进行调整所在位置；其中 AlignmentDirectional start/y 范围是 [-1.0, 1.0]；

2. textDirection
      当 alignment 使用 AlignmentDirectional 方式设置对齐方式时，textDirection 用于从左到右或从右到左的起始方向；

3. constrainedAxis
      作用于是否保留约束的轴方向，若不设置或设置为 null 则横向或纵向均不保留约束；若设置为 vertical 则保留其父类纵向约束；设置为 horizontal 则保留其父类横向约束；

* */
class UnconstrainedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UnconstrainedBoxPageState2();
  }
}

class UnconstrainedBoxPageState extends State<UnconstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('UnconstrainedBox'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 180,
              width: 180,
              color: Colors.blueAccent.withOpacity(0.4),
              child: UnconstrainedBox(
                  constrainedAxis: null,
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  textDirection: TextDirection.ltr,
                  child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.green.withOpacity(0.6)))),
          Container(
              height: 180,
              width: 180,
              color: Colors.redAccent.withOpacity(0.4),
              child: UnconstrainedBox(
                  constrainedAxis: null,
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  textDirection: TextDirection.rtl,
                  child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.purple.withOpacity(0.6)))),
        ],
      ),
    );
  }
}

class UnconstrainedBoxPageState2 extends State<UnconstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('UnconstrainedBox'),
      ),
      body: Column(children: <Widget>[
        Container(
            height: 100,
            width: 360,
            color: Colors.blueAccent.withOpacity(0.4),
            child: UnconstrainedBox(
                alignment: Alignment.center,
                constrainedAxis: null,
                child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green.withOpacity(0.6)))),
        Container(
            height: 100,
            width: 360,
            color: Colors.blueAccent.withOpacity(0.4),
            child: UnconstrainedBox(
                alignment: Alignment.center,
                constrainedAxis: Axis.vertical,
                child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.green.withOpacity(0.6)))),
        Container(
            height: 100,
            width: 360,
            color: Colors.blueAccent.withOpacity(0.4),
            child: UnconstrainedBox(
                alignment: Alignment.topRight,
                constrainedAxis: Axis.horizontal,
                child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.green.withOpacity(0.6)))),
        Container(
            height: 100,
            width: 360,
            color: Colors.blueAccent.withOpacity(0.4),
            child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                constrainedAxis: null,
                child: Container(
                    width: 100,
                    height: 300,
                    color: Colors.green.withOpacity(0.6)))),
      ]),
    );
  }
}
