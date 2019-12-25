import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast'),
      ),

      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('toast'),
            onPressed: (){
              Fluttertoast.showToast(
                msg: "您好，欢迎点赞或关注!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
                textColor: Colors.red,
                backgroundColor: Colors.blue,
              );
            },
          ),
        ],
      ),
    );
  }

}