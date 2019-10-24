import 'package:flutter/material.dart';
import 'package:fluttera/modules/navgation/Login.dart';

import 'RegisterFirst.dart';
import 'RegisterSecond.dart';
import 'RegisterThird.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: RootPage(),



      routes: {
        '/root': (context)=>RootPage(),
        '/login': (context)=>LoginPage(),
        '/registerFirst': (context)=>RegisterFirstPage(),
        '/registerSecond': (context)=>RegisterSecondPage(),
        '/registerThird': (context)=>RegisterThirdPage(),

      },
    );


  }

}

class  RootPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('nav'),
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('注册'),
            onTap: (){
              Navigator.of(context).pushNamed('/registerFirst');
            },
          ),
        ],
      ),
    );
  }

}