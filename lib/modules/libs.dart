import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/lib/image.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'lib/flutter_spinkit.dart';
import 'lib/image/image_picker.dart';
import 'lib/flustars.dart';
import 'lib/picker/flutter_picker.dart';
import 'lib/staggered_grid.dart';

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
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('Flustars'),
            onTap: (){
              _goModule(context,2);
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
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          Divider(),


          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_picker'),
            onTap: (){
              _goModule(context,4);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_spinkit'),
            subtitle: Text('加载动画。支持多种常用效果，非常酷炫'),
            onTap: (){
              _goModule(context,5);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_staggered_grid_view'),
            subtitle: Text('瀑布流列表插件，可以支持不同大小的列'),
            onTap: (){
              _goModule(context,6);
            },
            contentPadding: EdgeInsets.only(left: 20),
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
      case 4:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FlutterPickerPage();
        }));
        break;
      case 5:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return SpinkitPage();
        }));
        break;

      case 6:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return StaggeredGridPage();
        }));
        break;
    }
  }
}