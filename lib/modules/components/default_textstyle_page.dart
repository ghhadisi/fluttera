import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
https://www.imooc.com/article/284360

在当前页面中设置统一的 DefaultTextStyle 默认文本样式，在当前页面中用到的 Text 默认应用的都是该样式，
若需要调整部分样式，直接设置 TextStyle 即可；若不需要重用该样式，设置 inherit: false 属性即可，但 textAlign 并不在该效果内。

* */
class DefaultTextStylePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        top: false,
        child: Scaffold(
            appBar: new AppBar(
              title: Text('DefaultTextStyle Demo'),
            ),
            body: DefaultTextStyle(
              style: TextStyle(
                  color: Colors.blueGrey, wordSpacing: 10.0, fontSize: 20.0),
              textAlign: TextAlign.center,
              child: Container(
                  child: ListView(children: <Widget>[
                    Text("Ha ha ha!默认文本样式(局中/20.0)"),
                    Text("Ha ha ha!与默认文本样式部分不同",
                        style: TextStyle(color: Colors.redAccent),
                        textAlign: TextAlign.left),
                    Text("Ha ha ha!", style: TextStyle(inherit: false)),
                    Text("Ha ha ha!自己单独样式",
                        style: TextStyle(inherit: false, color: Colors.grey))
                  ])),
            )));
  }

}