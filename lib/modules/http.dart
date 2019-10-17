import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/bean/user_entity2.dart';

class HttpModule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('http module'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text('http get  parse json'),
            onTap: _getJsonParse,
          ),
        ],
      ),
    );
  }

  void  _getJsonParse()async{
     {
      try {
        Response response = await Dio().get(
            "https://jsonplaceholder.typicode.com/posts/1");

        Map<String, dynamic> userMap = jsonDecode(response.toString());
        UserEntity2 user = UserEntity2.fromJson(userMap);
        print('userid  = '+user.userId.toString());
//                  print(user.toJson().toString());
//                  Scaffold.of(context).showSnackBar(
//                      new SnackBar(content: new Text(user.toJson().toString())));
      } catch (e) {
        print(e);
      }
    }
  }
}