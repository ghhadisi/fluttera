import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
https://www.imooc.com/article/294693

class SizedBox extends SingleChildRenderObjectWidget {
  // 创建固定大小的约束Box
  const SizedBox({ Key key, this.width, this.height, Widget child })
    : super(key: key, child: child);

  // 创建父类允许最大尺寸的约束Box
  const SizedBox.expand({ Key key, Widget child })
    : width = double.infinity,
      height = double.infinity,
      super(key: key, child: child);

  // 创建父类允许最小尺寸的约束Box
  const SizedBox.shrink({ Key key, Widget child })
    : width = 0.0,
      height = 0.0,
      super(key: key, child: child);

  // 创建指定大小的约束Box
  SizedBox.fromSize({ Key key, Widget child, Size size })
    : width = size?.width,
      height = size?.height,
      super(key: key, child: child);
}


* */
class SizedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SizedBoxPageState4();
  }
}

/*
  SizedBox 可自定义 width 和 height，当限制宽高时，子 Widget 无论宽高如何，均默认填充；
  通过设置 double.infinity 填充父类 Widget 宽高，注意此时父类要有限制，不可是无限宽高；
  当 width 和 height 未设置时，根据子 Widget 大小展示；

* */
class SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(color: Colors.teal.withOpacity(0.4))),
          SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(
                  color: Colors.red.withOpacity(0.4),
                  width: 200.0,
                  height: 200.0)),
          SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(
                  color: Colors.pink.withOpacity(0.4),
                  width: 50.0,
                  height: 50.0)),
          SizedBox(
              width: double.infinity,
              height: 100.0,
              child: Container(color: Colors.blueAccent.withOpacity(0.4))),
        ],
      ),
    );
  }
}


/*
.expand 是便捷方法，默认 width 和 height 均为 double.infinity，填充整个弗类 Widget；

* */
class SizedBoxPageState2 extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text("SizedBox"),
        ),
        body:   Container(
          color: Colors.red,

          height: 500,
          child:
            SizedBox.expand(child: Container(color: Colors.blueAccent.withOpacity(0.4))),
        ),
    );
  }
}


/*
shrink 同样时便捷方法，但 width 和 height 均为 0.0，
无论子 Widget 设置多少均不展示；小菜暂时未想出此类方法的应用场景；

* */
class SizedBoxPageState3 extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body:   Container(
        color: Colors.red,
        height: 500,
        child:
        SizedBox.shrink(child: Container(color: Colors.pink.withOpacity(0.4))),
      ),
    );
  }
}



/*
fromSize 便捷方式与基本的构建方式基本相同，只是 width 和 height 由 Size 封装，
小菜用此方法实现与基本方式相同的效果；

* */
class SizedBoxPageState4 extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body:  Column(
        children: <Widget>[
      SizedBox.fromSize(size: Size(100.0, 100.0), child: Container(color: Colors.teal.withOpacity(0.4))),
      SizedBox.fromSize(size: Size(100.0, 100.0), child: Container(color: Colors.red.withOpacity(0.4), width: 200.0, height: 200.0)),
      SizedBox.fromSize(size: Size(100.0, 100.0), child: Container(color: Colors.pink.withOpacity(0.4), width: 50.0, height: 50.0)),
      SizedBox.fromSize(size: Size(double.infinity, 100.0), child: Container(color: Colors.blueAccent.withOpacity(0.4))),


    ],
      ),
    );
  }
}