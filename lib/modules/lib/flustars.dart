import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//https://github.com/Sky24n/flustars
class FlustarsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flustars'),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('SpUtil 写入'),
            onTap: (){
              _goModule(context,1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          new ListTile(

            title: Text('SpUtil 读取'),
            onTap: (){
              _goModule(context,2);
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


  void _goModule(context,int index) {
    switch (index) {
      case 1:
          SpUtil.putInt("key", 123);
        break;
      case 2:
           LogUtil.e("value =  ${SpUtil.getInt("key", defValue: 0)}");
        break;

    }
  }
}