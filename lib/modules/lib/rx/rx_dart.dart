import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//https://github.com/ReactiveX/rxdart
class RxDartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RxData'),
      ),

      body: ListView(
        children: <Widget>[
          FlatButton(
            child: Text('创建Observables-----从一个Stream中创建'),

            onPressed: (){

            },
          ),
          Divider(),

          RaisedButton(
            child: Text('创建Observables-----通过Future创建'),

            onPressed: (){

            },
          ),
          Divider(),

          OutlineButton(
            child: Text('创建Observables-----通过Iterable创建'),

            onPressed: (){

            },
          ),
          Divider(),
        ],
      ),
    );
  }

}