import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
class SizedOverflowBox extends SingleChildRenderObjectWidget {
  const SizedOverflowBox({
    Key key,
    @required this.size,                // 约束 Size
    this.alignment = Alignment.center,  // 对齐方式
    Widget child,
  })
}

 size 是对子 Widget 的基本尺寸约束，
 alignment 是通用的对齐方式
SizedOverflowBox 是 SizedBox 与 OverflowBox 的结合，小菜简单理解 SizedBox 设置基本约束，OverflowBox 设置子 Widget 与父 Widget 关系，是否溢出；


* */
class SizedOverflowBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SizedOverflowBoxPageState4();
  }
}

/*
父 Widget 无约束，若 child.width <= Size.x && child.height <= Size.y，以子 Widget 宽高约束展示；

* */
class SizedOverflowBoxPageState extends State<SizedOverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Container(
          color: Colors.green.withOpacity(0.4),
          child: Center(
              child: SizedOverflowBox(
                  size: Size(100, 100),
                  alignment: Alignment.center,
                  child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blueAccent.withOpacity(0.6))))),
    );
  }
}

/*
* 父 Widget 无约束，若 child.width > Size.x || child.height > Size.h，以子 Widget 宽高溢出展示；

* */
class SizedOverflowBoxPageState2 extends State<SizedOverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Container(
          color: Colors.orange.withOpacity(0.4),
          child: Center(
              child: SizedOverflowBox(
                  size: Size(100, 100),
                  alignment: Alignment.center,
                  child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.purple.withOpacity(0.4))))),
    );
  }
}

/*
父 Widget 有约束时，若 child.width <= Size.x && child.height <= Size.y 时，与状况一相同；
若 child.width > parent.width >= Size.x || child.height > parent.height >= Size.y，
则子 Widget 溢出 SizedOverflowBox 到父 Widget 约束宽高展示；


* */

class SizedOverflowBoxPageState3 extends State<SizedOverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Container(
          width: 150,
          height: 150,
          color: Colors.redAccent.withOpacity(0.4),
          child: Center(
              child: SizedOverflowBox(
                  size: Size(100, 100),
                  alignment: Alignment.center,
                  child: Container(
                      width: 250,
                      height: 50,
                      color: Colors.grey.withOpacity(0.8))))),
    );
  }
}

/*
父 Widget 有约束时，若 Size.x > parent.width || Size.y > parent.height，最终展示的最大宽高是父 Widget 约束的宽高(子 Widget 溢出或非溢出)；

* */
class SizedOverflowBoxPageState4 extends State<SizedOverflowBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
      ),
      body: Container(
          width: 150,
          height: 150,
          color: Colors.redAccent.withOpacity(0.4),
          child: Center(
              child: SizedOverflowBox(
                  size: Size(400, 400),
                  alignment: Alignment.topLeft,
                  child: Container(
                      width: 150,
                      height: 50,
                      color: Colors.grey.withOpacity(0.8))))),
    );
  }
}
