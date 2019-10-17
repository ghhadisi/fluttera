import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/main.dart';
import 'package:fluttera/modules/io.dart';
import 'bean/user_entity.dart';
import 'bean/user_entity2.dart';
import 'modules/http.dart';


class Modules extends StatelessWidget {
  var _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
    return new MaterialApp(
      title: 'modules  flutter a',
      theme: ThemeData(
        primarySwatch: Colors.blue,
//        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),

      home: MyHomePage()
    );
  }




}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(

            title: Text('http module'),
            onTap: (){
                _goModule(context,1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('io module'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
        ],
      ),

    );
  }


  void _goModule(context,int index){

    switch(index){
      case 1:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return HttpModule();
        }));
        break;
      case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context )=>IoModule()));
        break;
    }
  }
}