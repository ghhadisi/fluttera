import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
*https://www.imooc.com/article/284287
*
*  Flutter 中默认提供了 AppBar 给我们带来了很多便利，但是有需要调整 AppBar 的高度，方式很简单。
* 在 AppBar 外嵌套一层 PreferdSize 即可设置 AppBar 的高度。

* */
class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Scaffold(
//        appBar: AppBar(
//        title: Row(children: <Widget>[
//            Text('标题栏高度测试-默认'),
//            Expanded(flex: 1, child: Icon(Icons.add))
//            ]),
//        ),
//      body: Text('content'),
//    );


    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
              title: Row(children: <Widget>[
                Text('标题栏高度测试-80.0'),
                Expanded(flex: 1, child: Icon(Icons.add))
              ])),
          preferredSize: Size.fromHeight(80.0)),
      body: Text('content'),
    );
  }

}