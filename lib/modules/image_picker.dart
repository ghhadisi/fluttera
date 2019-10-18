import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerModule extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImagePickerModuleState();
  }

}

class ImagePickerModuleState extends State<ImagePickerModule>{
  File _image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('ImagePickerModule'),
      ),
      body: new ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('getImage'),
            onTap: (){
              getImage();
            },
          ),

          _image!=null?Image.file(_image):Image.asset('assets/1.jpeg'),
        ],
      ),
    );
  }


  Future getImage() async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    var image = await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth:300.0,maxHeight:500.0,imageQuality: 90);

    setState(() {
      _image = image;
    });
  }
}