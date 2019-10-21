import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/image.dart';
import 'components/text_container.dart';

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
    }
  }
}