import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.imooc.com/article/294693

class ConstrainedBox extends SingleChildRenderObjectWidget {
  ConstrainedBox({
    Key key,
    @required this.constraints,
    Widget child,
  })
}

class BoxConstraints extends Constraints {
  // 用指定的约束大小创建框架大小
  const BoxConstraints({
    this.minWidth = 0.0,
    this.maxWidth = double.infinity,
    this.minHeight = 0.0,
    this.maxHeight = double.infinity,
  });

  // 仅用指定大小创建框架大小
  BoxConstraints.tight(Size size)
    : minWidth = size.width,
      maxWidth = size.width,
      minHeight = size.height,
      maxHeight = size.height;

  // 用指定的约束大小创建框架大小
  const BoxConstraints.tightFor({
    double width,
    double height,
  })

  // 创建需要给定宽度或高度的框约束，除非它们是无限的
  const BoxConstraints.tightForFinite({
    double width = double.infinity,
    double height = double.infinity,
  })

  // 创建禁止大小大于给定大小的框约束
  BoxConstraints.loose(Size size)
    : minWidth = 0.0,
      maxWidth = size.width,
      minHeight = 0.0,
      maxHeight = size.height;

  // 创建扩展为填充另一个框约束的框约束
  const BoxConstraints.expand({
    double width,
    double height,
  })
}


* */
class ConstrainedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConstrainedBoxPageState6();
  }
}

/*
1. BoxConstraints()
BoxConstraints 的构造方法可以设置最大最小宽度和高度四个属性，在实际场景中可以灵活运用；
其约束的大小按照 minWidth <= child.width <= maxWidth && minHeight <= child.Height <= maxHeight，
当我们不设置宽高尺寸时，minWidth = 0.0 && minHeight = 0.0 && maxWidth = double.infinity && maxHeight = double.infinity;



* */
class ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  color: Colors.pink.withOpacity(0.4),
                  child: Text('ConstrainedBox'))),
          ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                  color: Colors.blueAccent.withOpacity(0.4),
                  child: Text(
                      'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 100.0, minHeight: 100.0),
              child: Container(
                  color: Colors.orange.withOpacity(0.4),
                  child: Text('ConstrainedBox'))),
          ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100.0, maxWidth: 100.0),
              child: Container(
                  color: Colors.teal.withOpacity(0.4),
                  child: Text(
                      'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
        ],
      ),
    );
  }
}

/*
.tight 构造方法中需要传一个固定尺寸的 Size 其中 minWidth == maxWidth == size.width && maxWidth == maxHeight == size.height；
无论子 Widget 设置多大宽高均按照 Size 宽高约束；

*/
class ConstrainedBoxPageState2 extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(children: <Widget>[
        ConstrainedBox(
            constraints: BoxConstraints.tight(Size(110.0, 120.0)),
            child: Container(
                color: Colors.purple.withOpacity(0.4),
                child: Text(
                    'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
      ]),
    );
  }
}

/*
.tightFor 方式是 .tight 方式的细化，可以自定义 width 和 height；若宽高未设置，则最大宽高为无限，最小宽高为 0.0；若设置宽高则以设置尺寸进行约束；

* */
class ConstrainedBoxPageState3 extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(children: <Widget>[
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 110.0),
            child: Container(
                color: Colors.teal.withOpacity(0.4),
                child: Text(
                    'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
        ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 110.0, height: 120.0),
            child: Container(
                color: Colors.purple.withOpacity(0.4),
                child: Text(
                    'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
      ]),
    );
  }
}

/*
BoxConstraints.tightForFinite()
.tightForFinite 与 .tightFor 类似，默认最大宽高为无限，最小宽高为 0.0，
其判断的是设置宽高是否为无限，不是 double.infinity
则 minWidth == maxWidth == width && maxWidth == maxHeight == height 进行约束；



* */
class ConstrainedBoxPageState4 extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('ConstrainedBox'),
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
                constraints: BoxConstraints.tightForFinite(),
                child: Container(
                    color: Colors.teal.withOpacity(0.4),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
            ConstrainedBox(
                constraints:
                    BoxConstraints.tightForFinite(width: 110.0, height: 120.0),
                child: Container(
                    color: Colors.purple.withOpacity(0.4),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
          ],
        ));
  }
}

/*
BoxConstraints.loose()
.loose 方式限制给定 Size 大小，minWidth / minHeight 均为 0.0，最大宽高为 Size 大小；
其中整体约束由 Size 限制，实际展示与子 Widget 大小相关；


* */
class ConstrainedBoxPageState5 extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('ConstrainedBox'),
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
                constraints: BoxConstraints.loose(Size(110.0, 150.0)),
                child: Container(
                    color: Colors.purple.withOpacity(0.4),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
            ConstrainedBox(
                constraints: BoxConstraints.loose(Size(110.0, 150.0)),
                child: Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.grey.withOpacity(0.6),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
            ConstrainedBox(
                constraints: BoxConstraints.loose(Size(110.0, 120.0)),
                child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green.withOpacity(0.6),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
          ],
        ));
  }
}

/*
BoxConstraints.expand()
      大部分 .expand 方式是填充方式，默认填满父 Widget，若不设置宽高，默认 minWidth == maxWidth == double.infinity
      && minHeight == maxHeight == double.infinity，使用时注意父类约束；



* */
class ConstrainedBoxPageState6 extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('ConstrainedBox'),
        ),
        body: Row(
          children: <Widget>[
            ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                    color: Colors.teal.withOpacity(0.4),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
            ConstrainedBox(
                constraints: BoxConstraints.expand(width: 110.0, height: 150.0),
                child: Container(
                    color: Colors.purple.withOpacity(0.4),
                    child: Text(
                        'ConstrainedBox: A widget that imposes additional constraints on its child.'))),
          ],
        ));
  }
}
