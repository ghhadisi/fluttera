import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DrawerPageState2();
  }

}


class _DrawerPageState extends State<DrawerPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),


      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage('assets/1.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),

              child: ListView(
                children: <Widget>[
                  Text('小明',style: TextStyle(
                    fontSize:32,
                    color: Colors.white,
                  ),),

                ],
              ),
            ),

            ListTile(
              title: Text('设置'),
            ),
            Divider(),
            ListTile(
              title: Text('版本更新'),
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        child: Text('right'),
      ),
    );
  }

}

class _DrawerPageState2 extends State<DrawerPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),


      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
//                image: DecorationImage(
//                  image: AssetImage('assets/lake.png'),
//                  fit: BoxFit.cover,
//                ),
              ),
              accountName: Text('小明'),
              accountEmail: Text('asdasd@qq.com'),
              currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage( 'https://www.itying.com/images/flutter/1.png'),
              ),

              otherAccountsPictures: <Widget>[
                Image.network("https://www.itying.com/images/flutter/4.png"),
                Image.network("https://www.itying.com/images/flutter/5.png"),
                Image.network("https://www.itying.com/images/flutter/6.png"),
              ],
            ),

            ListTile(
              title: Text('设置'),
            ),
            Divider(),
            ListTile(
              title: Text('版本更新'),
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.close),
              title: Text('版本更新'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        child: Text('right'),
      ),
    );
  }

}