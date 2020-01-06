import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* FractionallySizedBox 可以通过对齐方式和设置宽高因子并结合父 Widget 宽高来约束子 Widget；采用宽高因子使用更加灵活；
*
*class FractionallySizedBox extends SingleChildRenderObjectWidget {
  const FractionallySizedBox({
    Key key,
    this.alignment = Alignment.center,  // 对齐方式
    this.widthFactor,                   // 宽度因子
    this.heightFactor,                  // 高度因子
    Widget child,
  })
}
*
*
1. alignment
      与其他组件相同，通用于子 Widget 的对齐方向；

2. widthFactor
      宽度因子，若不为 null 则通过父 Widget 宽度占比来约束子 Widget 宽度；若为 null 按照父 Widget 宽度填充；

3. heightFactor
      高度因子，与 widthFactor 使用相同；
* */
class FractionallySizedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FractionallySizedBoxPageState();
  }
}

class FractionallySizedBoxPageState extends State<FractionallySizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              color: Colors.blueAccent.withOpacity(0.4),
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                  alignment: Alignment.center,
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                      width: 50,
                      height: 80,
                      color: Colors.orange.withOpacity(0.6)))),
          Container(
              color: Colors.blueAccent.withOpacity(0.4),
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                  alignment: Alignment.center,
                  widthFactor: 0.5,
                  heightFactor: null,
                  child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.orange.withOpacity(0.6)))),
          Container(
              color: Colors.blueAccent.withOpacity(0.4),
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                  alignment: Alignment.center,
                  widthFactor: 1.5,
                  heightFactor: 0.6,
                  child: Container(color: Colors.orange.withOpacity(0.6)))),
          Container(
              color: Colors.blueAccent.withOpacity(0.4),
              width: 100,
              height: 100,
              child: FractionallySizedBox(
                  alignment: AlignmentDirectional(-0.15, -0.15),
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(color: Colors.orange.withOpacity(0.6)))),
        ],
      ),
    );
  }
}
