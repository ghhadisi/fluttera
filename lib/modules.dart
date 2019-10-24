import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/main.dart';
import 'package:fluttera/modules/io.dart';
import 'package:fluttera/modules/native.dart';
import 'bean/user_entity.dart';
import 'bean/user_entity2.dart';
import 'modules/compoents.dart';
import 'modules/http.dart';
import 'modules/image_picker.dart';


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
//      onGenerateRoute: ,
//    initialRoute: ,
//    routes: ,
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
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.menu,),
          tooltip: "search",
          onPressed: (){
            print('Search Pressed');
          },
        ),

        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "more_horiz",
              onPressed: (){
                print('more_horiz Pressed');
              }
          ),
        ],
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

          new ListTile(

            title: Text('get battery module'),
            onTap: (){
              _goModule(context,3);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('image picker'),
            onTap: (){
              _goModule(context,4);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('components'),
            onTap: (){
              _goModule(context,5);
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
      case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context)=>NativeModule()));
        break;

      case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context)=>ImagePickerModule()));
        break;
      case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context)=>Componets()));
        break;
    }
  }
}