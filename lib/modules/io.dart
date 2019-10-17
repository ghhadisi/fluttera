import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
/**
 * https://flutterchina.club/reading-writing-files/
 *
 *
 */
class IoModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('io module'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('写内容'),
            onTap: (){
              _write('hello  aaaa  xxxx');
            },
          ),
          new ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('读内容'),
            onTap: (){
              _read();
            },
          ),
        ],
      ),
    );
  }

  Future<File> _getLocalFile() async{
    String dir = (await getApplicationDocumentsDirectory()).path;
    print(dir);
    return new File('$dir/cotent.txt');
  }

  void _write(String txt) async{
      _getLocalFile().then((File file){
        file.writeAsString(txt);
      });
  }

  void _read() async{
    _getLocalFile().then((File file){
       file.readAsString().then((String txt){
          print(txt);
       });
    });
  }
}