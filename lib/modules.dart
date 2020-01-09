import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flustars/flustars.dart' hide ScreenUtil;
import 'package:flutter/material.dart';
import 'package:flutter_msg_engine/flutter_msg_engine.dart';
import 'package:fluttera/main.dart';
import 'package:fluttera/modules/io.dart';
import 'package:fluttera/modules/libs.dart';
import 'package:fluttera/modules/native.dart';
import 'package:provider/provider.dart';
import 'bean/user_entity.dart';
import 'bean/user_entity2.dart';
import 'modules/compoents.dart';
import 'modules/http.dart';
import 'modules/lib/image/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/lib/redux/ReduxState.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class Modules extends StatefulWidget implements MsgProcHandler<String> {
  @override
  State<StatefulWidget> createState() {
    MsgEngine.instance.register(this, 150);

    // TODO: implement createState
    return _ModulesState();
  }

  @override
  void processMsg(MsgPack<String> msg) {
    // TODO: implement processMsg
    print("MyApp: " + msg.data);
  }
}

class _ModulesState extends State<Modules> {
  final store =
      new Store<ReduxState>(getReduce, initialState: ReduxState.init());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initAsync();
    MsgEngine.instance.start();

    MsgEngine.instance.onLog = ((MsgEngine engine, String text) {
      print(text);
    });
  }

  @override
  void dispose() {
    MsgEngine.instance.stop();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new MaterialApp(
//        title: 'modules  flutter a',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
////        brightness: Brightness.dark,
//          primaryColor: Colors.lightBlue[800],
//          accentColor: Colors.cyan[600],
//        ),
////      onGenerateRoute: ,
////    initialRoute: ,
////    routes: ,
////        home: MyHomePage()
//
////        home: Provider<String>.value(value: "aaaaa",child: MyHomePage(),)
//        home: MultiProvider(providers: [
//          Provider<String>.value(value:'aaaaa'),
//
//          Provider<int>.value(value:123),
//
//        ],child: MyHomePage(),),
//
//
//
//    );
    return StoreProvider(
      store: store,
      child: StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store) {
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
//        home: MyHomePage()

//        home: Provider<String>.value(value: "aaaaa",child: MyHomePage(),)
            home: MultiProvider(
              providers: [
                Provider<String>.value(value: 'aaaaa'),
                Provider<int>.value(value: 123),
              ],
              child: MyHomePage(),
            ),
          );
        },
      ),
    );

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
//        home: MyHomePage()

//        home: Provider<String>.value(value: "aaaaa",child: MyHomePage(),)
      home: MultiProvider(
        providers: [
          Provider<String>.value(value: 'aaaaa'),
          Provider<int>.value(value: 123),
        ],
        child: MyHomePage(),
      ),
    );
  }

  void _initAsync() async {
    await SpUtil.getInstance();
    await DirectoryUtil.getInstance();
    _init();
  }

  void _init() {}
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1920, allowFontScaling: false);

    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('home'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          tooltip: "search",
          onPressed: () {
            print('Search Pressed');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "more_horiz",
              onPressed: () {
                print('more_horiz Pressed');
              }),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Text(
              'provide str = ${Provider.of<String>(context)}  int = ${Provider.of<int>(context)}'),
          new ListTile(
            title: Text('http module'),
            onTap: () {
              _goModule(context, 1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('io module'),
            onTap: () {
              _goModule(context, 2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('get battery module'),
            onTap: () {
              _goModule(context, 3);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('常用库'),
            onTap: () {
              _goModule(context, 4);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('components'),
            onTap: () {
              _goModule(context, 5);
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

  void _goModule(context, int index) {
    switch (index) {
      case 1:
        Navigator.push(context,
            new MaterialPageRoute(builder: (BuildContext context) {
          return HttpModule();
        }));
        break;
      case 2:
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => IoModule()));
        break;
      case 3:
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => NativeModule()));
        break;

      case 4:
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => LibsPage()));
        break;
      case 5:
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Componets()));
        break;

    }
  }
}
