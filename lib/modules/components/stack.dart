import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StackPageState3();
  }

}

class StackPageState extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Image.asset('assets/1.jpeg',
          fit: BoxFit.fill,),

          Text('hello',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ],
      ),
    );
  }

}

class StackPageState2 extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(
        alignment: Alignment(0,1),
        children: <Widget>[
          Image.asset('assets/1.jpeg',
            fit: BoxFit.fill,),

          Text('hello',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ],
      ),
    );
  }

}

class StackPageState3 extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(

        children: <Widget>[
          Image.asset('assets/1.jpeg',
            fit: BoxFit.cover,

          width: 800,
          height: 1200,),

          Align(
              alignment: Alignment.topLeft,
              child: Text('hello',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),

            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Text('world',style: TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),

            ),
          ),
        ],
      ),
    );
  }

}