import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpandPageState();
  }

}

class _ExpandPageState extends State<ExpandPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('expand'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: 180,
              child: Image.asset('assets/1.jpeg',fit: BoxFit.cover,),
            ) ,
          ),
          SizedBox(width: 10,),
          Expanded(
            flex: 1,
            child: Container(
              height: 180,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:   Image.asset('assets/2.jpeg',
                      fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/3.jpeg',fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}