import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* https://www.imooc.com/article/284360
*
*   Spacer 是小菜偶然间了解到的一个很强大的 Widget，Spacer 小菜的理解是占位组件，直接看效果图更加直观。
* Spacer 创建一个可调节的空间隔，可用于调整 Flex 容器（如行或列）中窗口小部件之间的间距；默认 flex: 1。

Spacer
顾名思义只是一个间距控件，可以用于调节小部件之间的间距，它有一个flex可以进行设置；

Expanded
Expanded会尽可能的充满分布在Row, Column, or Flex的主轴方向上；

Flexible
Flexible也是为小部件提供空间的，但是不会要求子空间填满可用空间

* */
class SpacerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        top: false,
        child: Scaffold(
            appBar: new AppBar(
              title: Text('Spacer Demo'),
            ),
            body: Column(children: <Widget>[
              Row(children: <Widget>[
                Text('Begin', style: TextStyle(color: Colors.redAccent)),
                Spacer(),
                Text('Middle', style: TextStyle(color: Colors.greenAccent)),
                Spacer(flex: 2),
                Text('End', style: TextStyle(color: Colors.blue))
              ]),
              Row(children: <Widget>[
                Text('Begin', style: TextStyle(color: Colors.redAccent)),
                Spacer(),
                Text('Middle', style: TextStyle(color: Colors.greenAccent)),
                Text('End', style: TextStyle(color: Colors.blue))
              ]),
              Row(children: <Widget>[
                Text('Begin', style: TextStyle(color: Colors.redAccent)),
                Text('Middle', style: TextStyle(color: Colors.greenAccent)),
                Spacer(flex: 1),
                Text('End', style: TextStyle(color: Colors.blue))
              ])
            ])));

  }

}