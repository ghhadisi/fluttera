import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
*
* https://www.imooc.com/article/284360
*
是一个可向下扩展空间的 Widget
*
* const ExpansionTile({
    Key key,    this.leading,           // 前置图标
    @required this.title,   // 标题内容
    this.backgroundColor,   // 背景色包括扩展空间整体背景色
    this.onExpansionChanged,// 扩展时监听状态
    this.children = const <Widget>[],   // 扩展空间
    this.trailing,          // 动画效果
    this.initiallyExpanded = false,     // 初始化时是否展开}) : assert(initiallyExpanded != null),
    super(key: key);
* */
class ExpansionTilePage extends StatelessWidget{

  var _exState;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text('扩展 Tile')),
            body: Container(
                child: ExpansionTile(
                    title: Text('大礼包'),
                    leading: Icon(Icons.adjust),
                    backgroundColor: Colors.grey,
                    onExpansionChanged: (bool) {
                      _exState = bool;
                    },
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.white),
                          margin: EdgeInsets.all(5.0),
                          child: Column(children: <Widget>[
                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 8.0),
                                  child: Text('1. 可获取双倍会员积分;',
                                      style: TextStyle(color: Colors.blue, fontSize: 16.0)))
                            ]),
                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 8.0),
                                  child: Text('2. 积分兑换奖品8折优惠;',
                                      style: TextStyle(color: Colors.blue, fontSize: 16.0)))
                            ])
                          ]))
                    ]))));
  }

}