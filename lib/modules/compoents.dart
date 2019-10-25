import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/components/gridview.dart';

import 'components/aspect_card.dart';
import 'components/bottom_nav_bar.dart';
import 'components/drawer.dart';
import 'components/expand.dart';
import 'components/image.dart';
import 'components/stack.dart';
import 'components/tabbar.dart';
import 'components/text_container.dart';
import 'components/wrap.dart';

class Componets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('compents'),

      ),
      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('Text and Container'),
            onTap: (){
              _goModule(context,1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('image'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          new ListTile(
            title: Text('gridview'),
            onTap: (){
              _goModule(context,3);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('expand'),
            onTap: (){
              _goModule(context,4);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('stack'),
            onTap: (){
              _goModule(context,5);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('aspectradio card'),
            onTap: (){
              _goModule(context,6);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('wrap'),
            onTap: (){
              _goModule(context,7);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('BottomNavBarPage'),
            onTap: (){
              _goModule(context,8);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('TabBarPage'),
            onTap: (){
              _goModule(context,9);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('drawer'),
            onTap: (){
              _goModule(context,10);
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


  void _goModule(context,int index){

    switch(index){
      case 1:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TextContainer();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ImagePage();
        }));
        break;
      case 3:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return GridViewPage();
        }));
        break;
      case 4:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ExpandPage();
        }));
        break;
      case 5:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return StackPage();
        }));
        break;
      case 6:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return AspectCardPage();
        }));
        break;
      case 7:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return WrapPage();
        }));
        break;
      case 8:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return BottomNavBarPage();
        }));
        break;

      case 9:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TabBarPage();
        }));
        break;

      case 10:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return DrawerPage();
        }));
        break;
    }
  }
}