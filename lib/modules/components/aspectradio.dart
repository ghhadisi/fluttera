import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio'),),
      body: Column(
        children: <Widget>[
          aspectRatioWid3(),
          Divider(),
          aspectRatioWid4(),
        ],
      ),
    );


  }
  Widget aspectRatioWid() {

    return Container(
      height: 200.0,
      child: new AspectRatio(
          aspectRatio: 0.5,
          child: new Container(color: Colors.lightBlueAccent)));
  }

  Widget aspectRatioWid1() {

    return Container(
        width: 200.0,
        child: new AspectRatio(
            aspectRatio: 0.5,
            child: new Container(color: Colors.lightBlueAccent)));
  }


  Widget aspectRatioWid2() {
    return Container(
        width: 300.0,
        child: new AspectRatio(
            aspectRatio: 0.5,
            child: new Container(color: Colors.lightBlueAccent)));


  }

  Widget aspectRatioWid3() {
    return Container(
        width: 300.0,
        child: new AspectRatio(
            aspectRatio: 2,
            child: new Container(color: Colors.lightBlueAccent)));


  }

  Widget aspectRatioWid4() {
    return Container(
        width: 600.0,
        child: new AspectRatio(
            aspectRatio: 2,
            child: new Container(color: Colors.lightBlueAccent)));


  }

}