import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/lib/image.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'lib/image/image_picker.dart';
import 'lib/flustars.dart';

class LibsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text('各种库'),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('Image'),
            onTap: (){
              _goModule(context,1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('Flustars'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('toast'),
            onTap: (){
              _goModule(context,3);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          Divider(),
        ],
      ),
    );
  }


  void _goModule(context,int index) {
    switch (index) {
      case 1:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return ImagePage();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FlustarsPage();
        }));
        break;

      case 3:
        Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        break;
    }
  }
}