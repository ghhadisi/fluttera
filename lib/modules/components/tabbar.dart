import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabBarPageState2();
  }

}


class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarPage'),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 5.0,
          indicatorPadding: EdgeInsets.only(left: 50,right: 50),
          labelColor: Colors.red,
           unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(text: '热门', icon: Icon(Icons.camera),),
            Tab(text: '推荐',icon: Icon(Icons.favorite),),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text('热门列表'),
          Text('推荐列表'),
        ],
      ),
    );
  }

}

class _TabBarPageState2 extends State<TabBarPage> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TabBar(
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 5.0,
                indicatorPadding: EdgeInsets.only(left: 50,right: 50),
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(text: "热门"), Tab(text: "推荐")
                ],
              ),
            )
          ],
        ),


        ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text('热门列表'),
          Text('推荐列表'),
        ],
      ),
    );
  }

}