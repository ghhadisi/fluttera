import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../image_picker.dart';
import 'image/advance_net_work_image.dart';

class ImagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImagePageState();
  }

}


class _ImagePageState extends State<ImagePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('Image Picker'),
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

            title: Text('AdvanceNetWorkImagePage'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
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
          return ImagePickerModule();
        }));
        break;
      case 2:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return AdvanceNetWorkImagePage();
        }));
        break;
    }
  }
}