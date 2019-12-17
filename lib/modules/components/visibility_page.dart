import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisibilityPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('VisibilityPage'),),
      body: new Column(
        children: <Widget>[      new Opacity(
            opacity: 1.0,
            child: new Container(
                height: 80.0,
                color: Colors.blue,
                child: new Center(child: new Text('当前 opacity = 1.0')))),      new Opacity(
            opacity: 0.0,
            child: new Container(
                height: 80.0,
                color: Colors.green,
                child: new Center(child: new Text('当前 opacity = 0.0')))),      new Opacity(
            opacity: 0.5,
            child: new Container(
                height: 80.0,
                color: Colors.redAccent,
                child: new Center(child: new Text('当前 opacity = 0.5'))))
        ],
      ),
    );
  }

}