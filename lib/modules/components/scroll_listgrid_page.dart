import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* https://www.imooc.com/article/284361
*
* Page 页面同时用到 GridView 和 ListView 或多个 ListView，此时就会遇到常见的滑动冲突问题

 CustomScrollView 允许包含多种滚动模型，例如列表/网格和扩展标题。但其子 Widget 必须为 sliver 类型的。

* sliver 代表具有特定滚动效果的滚动模型，sliver 本身不包含滚动交互模型，需要通过 CustomScrollView 连接为一个整体。
*
*
*
primary + shrinkWrap
      小菜在使用 ListView 或 GridView 时发现有两个属性很重要。小菜的翻译很不到位，建议大家仔细阅读一下官网的介绍。

      shrinkWrap 常用于内容大小不确定情况，如果滚动视图(ListView/GridView/ScrollView 等)没有收缩包装，则滚动视图将扩展到允许的最大大小。如果是无界约束，则 shrinkWrap 必须为 true。

      primary 如果为 true，即使滚动视图没有足够的内容来支撑滚动，滚动视图也是可滚动的。否则，默认为 false 情况下，只有具有足够内容的用户才能滚动视图。

* */
class ScrollGridListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScrollGridListPageState2();
  }
}

class _ScrollGridListPageState extends State<ScrollGridListPage> {
  List<int> gridData = List<int>();

  _setGridData() {
    for (int i = 0; i < 15; i++) {
      gridData.add(i);
    }
  }

  @override
  void initState() {
    _setGridData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('方案一')), body: _bodyWid());
  }

  Widget _bodyWid() {
    return CustomScrollView(slivers: <Widget>[
      SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
        return _typeTitleWid('热门分类');
      }, childCount: 1)),
      SliverPadding(padding: const EdgeInsets.all(8.0), sliver: _typeGridWid()),
      SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
        return _typeTitleWid('智能推荐');
      }, childCount: 1)),
      _typeListWid()
    ]);
  }

  Widget _typeTitleWid(var titleStr) {
    return Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(titleStr,
                      style:
                          TextStyle(color: Color(0xFF808080), fontSize: 14.0))),
              Divider(color: Color(0xFF808080), height: 0.5)
            ]));
  }

  Widget _typeGridWid() {
    return SliverGrid(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 4.0),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
              height: 64.0,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(3.0)),
              child: Center(
                  child: Text('分类 ${(index + 1)}',
                      style: TextStyle(
                          color: Color(0xFF333333), fontSize: 14.0))));
        }, childCount: gridData.length));
  }

  Widget _typeListWid() {
    return SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('推荐精彩内容 ${(index + 1)}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xFF333333), fontSize: 15.0))),
                Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Divider(color: Color(0xFF808080), height: 0.5))
              ]));
        }, childCount: gridData.length));
  }
}

class _ScrollGridListPageState2 extends State<ScrollGridListPage> {

  List<int> gridData = List<int>();

  _setGridData() {
    for (int i = 0; i < 15; i++) {
      gridData.add(i);
    }
  }

  @override
  void initState() {
    _setGridData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('方案二')), body: _bodyWid2());
  }

  Widget _typeGridWid2() {
    return GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 4.0,
        padding: EdgeInsets.all(10.0),
        children: gridData.map((int index) {
          return Container(
              height: 64.0,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(3.0)),
              child: Center(
                  child: Text('分类 ${(index + 1)}',
                      style: TextStyle(
                          color: Color(0xFF333333), fontSize: 14.0))));
        }).toList());
  }

  Widget _typeListWid2() {
    return ListView.separated(
        primary: false,
        //shrinkWrap 常用于内容大小不确定情况，如果滚动视图(ListView/GridView/ScrollView 等)没有收缩包装，则滚动视图将扩展到允许的最大大小。如果是无界约束，则 shrinkWrap 必须为 true。
        shrinkWrap: true,
        itemCount: gridData.length,
        separatorBuilder: (BuildContext context, int index) => new Divider(),
        itemBuilder: (context, item) {
          return Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('推荐精彩内容 ${(item + 1)}',
                  style: TextStyle(color: Color(0xFF333333), fontSize: 15.0)));
        });
  }

  Widget _bodyWid2() {
    return ListView(children: <Widget>[
      _typeTitleWid('热门分类'),
      _typeGridWid2(),
      _typeTitleWid('智能推荐'),
      _typeListWid2()
    ]);
  }

  Widget _typeTitleWid(var titleStr) {
    return Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(titleStr,
                      style:
                      TextStyle(color: Color(0xFF808080), fontSize: 14.0))),
              Divider(color: Color(0xFF808080), height: 0.5)
            ]));
  }
}
