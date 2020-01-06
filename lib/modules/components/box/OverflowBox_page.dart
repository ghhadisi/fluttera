import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.imooc.com/article/295499

class OverflowBox extends SingleChildRenderObjectWidget {
  const OverflowBox({
    Key key,
    this.alignment = Alignment.center,  // 对齐方式
    this.minWidth,                      // 允许最小宽度
    this.maxWidth,                      // 允许最大宽度
    this.minHeight,                     // 允许最小高度
    this.maxHeight,                     // 允许最大高度
    Widget child,
  })
}
OverflowBox 通过设置最大最小宽高对子 Widget 进行约束，且与父 Widget 相关，子 Widget 可能会溢出父 Widget；

*
* */
class OverflowBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OverflowBoxPageState4();
  }
}

/*
* 父 Widget 无约束，仅设置 minWidth / minHeight，子 Widget 宽高小于等于 OverflowBox 最小宽高；
* 此时 child.width <= minWidth && child.height <= minHeight，最终以 OverflowBox 设置的最小宽高约束子 Widget；

* */
class OverflowBoxPageState extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
          color: Colors.blueAccent.withOpacity(0.4),
          child: OverflowBox(
              alignment: Alignment.center,
              minHeight: 100,
              child: Container(
                  color: Colors.purple.withOpacity(0.4),
                  width: 50,
                  height: 50))),
    );
  }
}

/*
父 Widget 无约束，仅设置 minWidth / minHeight，子 Widget 宽高大于 OverflowBox 最小宽高；
此时 minWidth < child.width < maxWidth，最终以子 Widget 设置的宽高展示；

* */
class OverflowBoxPageState2 extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
          color: Colors.green.withOpacity(0.4),
          child: OverflowBox(
              alignment: Alignment.center,
              minHeight: 100,
              minWidth: 100,
              child: Container(
                  color: Colors.purple.withOpacity(0.4),
                  width: 150,
                  height: 150))),
    );
  }
}

/*
父 Widget 无约束，设置 maxWidth / maxHeight，若 child.width > maxWidth || child.height > maxHeight
则以 OverflowBox 设置的最大宽高约束子 Widget；
若 child.width < maxWidth && child.height < maxHeight 则按照上述两种情况进行约束；

*/
class OverflowBoxPageState3 extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              color: Colors.orange.withOpacity(0.4),
              child: OverflowBox(
                  alignment: Alignment.center,
                  minHeight: 100,
                  maxWidth: 150,
                  maxHeight: 150,
                  child: Container(
                      color: Colors.purple.withOpacity(0.4),
                      width: 50,
                      height: 50))),
//    Container(color: Colors.grey.withOpacity(0.4),
//        child: OverflowBox(alignment: Alignment.center,
//            minHeight: 100, minWidth: 100, maxWidth: 150, maxHeight: 150,
//            child: Container(color: Colors.purple.withOpacity(0.4), width: 200, height: 200))),
        ],
      ),
    );
  }
}

/*
* 父 Widget 有约束，设置 maxWidth > parent.width || maxHeight > parent.height，
* 此时允许子 Widget 宽高大于父 Widget 宽高，其约束方式与上述情况相同；

* */
class OverflowBoxPageState4 extends State<OverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
      ),
      body: Container(
          width: 200,
          height: 200,
          color: Colors.brown.withOpacity(0.4),
          child: OverflowBox(
              alignment: Alignment.center,
              minHeight: 100,
              minWidth: 50,
              maxHeight: 250,
              maxWidth: 250,
              child: Container(color: Colors.purple.withOpacity(0.4)))),
    );
  }
}
