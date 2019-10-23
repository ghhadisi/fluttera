import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expand.dart';
import 'gridview.dart';
import 'image.dart';

class BottomNavBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavBarPageState2();
  }

}

class _BottomNavBarPageState extends State<BottomNavBarPage>{
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text ('BottomNavBar'),
      ),

      body: Text('123'),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index){
          setState(() {
            _index = index;
          });

        },
        currentIndex: _index,
        iconSize: 36,
        fixedColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('列表'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ],
      ),
    );
  }

}


class _BottomNavBarPageState2 extends State<BottomNavBarPage>{

  List  _pages = [
    ExpandPage(),
    GridViewPage(),
    ImagePage(),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text ('BottomNavBar'),
      ),

      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index){
          setState(() {
            _index = index;
          });

        },
        currentIndex: _index,
        iconSize: 36,
//        fixedColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('列表'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
        ],
      ),
    );
  }

}