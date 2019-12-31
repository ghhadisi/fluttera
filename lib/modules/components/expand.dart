import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/*
*
* Spacer
顾名思义只是一个间距控件，可以用于调节小部件之间的间距，它有一个flex可以进行设置；

Expanded
Expanded会尽可能的充满分布在Row, Column, or Flex的主轴方向上；

Flexible
Flexible也是为小部件提供空间的，但是不会要求子空间填满可用空间
* */
class ExpandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpandPageState6();
  }
}

class _ExpandPageState extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('expand'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: 180,
              child: Image.asset(
                'assets/1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 180,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/3.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExpandPageState2 extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text('Flexible Demo'),
        ),
        body: Container(
            child: Row(children: <Widget>[
          Flexible(flex: 1, child: Container(color: Colors.red)),
          Flexible(
              flex: 1,
              child: Column(children: <Widget>[
                Flexible(flex: 1, child: Container(color: Colors.blue)),
                Flexible(flex: 1, child: Container(color: Colors.green))
              ]))
        ])));
  }
}

class _ExpandPageState3 extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text('Flexible Demo'),
        ),
        body: Container(
            height: 120,
            child: Row(children: <Widget>[
              Flexible(flex: 1, child: Container(color: Colors.red)),
              Flexible(
                  flex: 1,
                  child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                        Flexible(flex: 1, child: Container(color: Colors.blue)),
                        Flexible(flex: 1, child: Container(color: Colors.green))
                      ])))
            ])));
  }
}

class _ExpandPageState4 extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text('Flexible Demo'),
        ),
        body: ListView(children: <Widget>[
          Container(
              child: Row(children: <Widget>[
            Expanded(
                flex: 1,
                child: Image.network(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544938569112&di=feeab11968f3870520482630563c4f54&imgtype=0&src=http%3A%2F%2Fi1.hdslb.com%2Fbfs%2Farchive%2Fac5c906111130579c6909aae47f6656e20d0906b.jpg')),
            Expanded(
                flex: 1,
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Flexible(
                          child: Image.network(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544938569112&di=feeab11968f3870520482630563c4f54&imgtype=0&src=http%3A%2F%2Fi1.hdslb.com%2Fbfs%2Farchive%2Fac5c906111130579c6909aae47f6656e20d0906b.jpg'),
                          flex: 1),
                      Flexible(
                          child: Image.network(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544938569112&di=feeab11968f3870520482630563c4f54&imgtype=0&src=http%3A%2F%2Fi1.hdslb.com%2Fbfs%2Farchive%2Fac5c906111130579c6909aae47f6656e20d0906b.jpg'),
                          flex: 1)
                    ])))
          ]))
        ]));
  }
}

/*
* 小菜理解 Container 未设置宽高，但 Row/Column 默认 mainAxisSize=MainAxisSize.max，因此正常填满；
* */

class _ExpandPageState5 extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        top: false,
        child: Scaffold(
            appBar: new AppBar(
              title: Text('Expanded Demo'),
            ),
            body: Container(
                child: Row(children: <Widget>[
              Expanded(flex: 1, child: Container(color: Colors.red)),
              Expanded(
                  flex: 1,
                  child: Column(children: <Widget>[
                    Expanded(flex: 1, child: Container(color: Colors.blue)),
                    Expanded(flex: 1, child: Container(color: Colors.green))
                  ]))
            ])
            )
        )
    );
  }
}


/*
最外层可能会嵌套 ListView/Column 或其他 Widget，此时用 Expanded 便会出现如上问题；
日志中建议使用 Flexible 和 Column mainAxisSize: MainAxisSize.min，虽然不报错，但是页面空白无效果；若只用 Flexible 结果依然是上述问题；

 小菜理解两层 Column 加上 Expanded/Flexible 无法计算 Container 高度，子 Widget 无法自适应父 Widget 高度；



* */
class _ExpandPageState6 extends State<ExpandPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        top: false,
        child: Scaffold(
            body: ListView(children: <Widget>[
              Container(
                  child: Row(children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.red)),
                    Flexible(
                        flex: 1,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(flex: 1, child: Container(color: Colors.blue)),
                              Flexible(flex: 1, child: Container(color: Colors.green))
                            ]))
                  ]))
            ])
        )
    );


  }
}