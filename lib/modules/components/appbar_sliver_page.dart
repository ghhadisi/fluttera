import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aspect_card.dart';

/*
*
https://www.imooc.com/article/289134

 const SliverAppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.forceElevated = false,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.expandedHeight,
    this.floating = false,
    this.pinned = false,
    this.snap = false,
})
leading：顶部左侧 Widget 常见的是返回按钮；

automaticallyImplyLeading：配合 leading 使用，若未设置 leading 且设为 false 时，
标题位置整体向左移动，占据 leading 原本位置；

title：顶部标题 Widget 常见的是文字标题等；

centerTitle：true 为标题 Widget 居中，false 默认居左；

actions：顶部右侧菜单组，可设置多个菜单按钮等；
actions: <Widget>[
    Icon(Icons.add), Icon(Icons.info),
    Padding( child: Icon(Icons.delete), padding: EdgeInsets.symmetric(horizontal: 10.0))],

elevation：滑动过程中标题栏与列表交界处；

forceElevated：与 elevation 共同使用，false 时不展示，true 时根据 elevation 设置效果展示；

backgroundColor：背景色；

brightness：主题亮度，主要是 light 和 dark 两种；

iconTheme：图标主题，包括 leading / actions 等主题；

textTheme：文字主题，包括标题等，通常与上述两种共同使用；

brightness: Brightness.dark,
iconTheme: IconThemeData(color: Colors.black26),
textTheme: TextTheme(title: TextStyle(color: Colors.black26)),

 expandedHeight：状态栏展开高度；

flexibleSpace：状态栏展开 Widget；

flexibleSpace: FlexibleSpaceBar(
    title: Text('标题'),
    background: Image.asset('images/icon_header.jpg', fit: BoxFit.cover),
    centerTitle: true),


pinned：true滑动后固定折叠状态栏，false 直接滑上去；

floating：滑动过程中效果，通常与 snap pinned 共同使用，且 floating 为 ture 时，snap 也一般为 true；官方推荐的样例视频很好的诠释出滑动过程中列表的滑动与顶部状态栏滑动变化；

floating: false, pinned: false, snap: false
floating: true, pinned: false, snap: false
floating: true, pinned: false, snap: true
floating: true, pinned: true, snap: false
floating: true, pinned: true, snap: true
floating: false, pinned: true, snap: false
*
* */
class AppBarSliverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppBarSliverPageState();
  }
}

class _AppBarSliverPageState extends State<AppBarSliverPage> {
  @override
  Widget build(BuildContext context) {

    print('AppBarSliverPage ------ build');

    // TODO: implement build
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text('Sliver Title Sliver Title Sliver Title'),
        leading: Icon(Icons.arrow_back),
        automaticallyImplyLeading: true,
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.info),
          Padding(
              child: Icon(Icons.delete),
              padding: EdgeInsets.symmetric(horizontal: 10.0)),
        ],
        flexibleSpace: FlexibleSpaceBar(
            title: Text('标题'),
            background:
                Image.asset('assets/lake.png', fit: BoxFit.cover),
            centerTitle: true),
        expandedHeight: 200,
        backgroundColor: Colors.pinkAccent,
        elevation: 16.0,
        centerTitle: true,
        primary: true,
        floating: true,
        pinned: true,
        snap: true,
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
              (_, index) => ListTile(
                  title: Text('当前 item 为: ${(index + 1)}'),
                onTap: (){
                  Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
                    return  AspectCardPage();
                  }));
                },
              )
          ))
    ]));
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('AppBarSliverPage ------ didChangeDependencies');

  }
  @override
  void didUpdateWidget(AppBarSliverPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('AppBarSliverPage ------ didUpdateWidget  ${oldWidget}');

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('AppBarSliverPage ------ dispose');

  }


  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('AppBarSliverPage ------ deactivate');

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('AppBarSliverPage ------ initState');

  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('AppBarSliverPage ------ reassemble');

  }

}
