import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImagePageState3();
  }
}

class _ImagePageState1 extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 10.0,
            color: Colors.yellow,
          ),
          borderRadius: BorderRadius.all(Radius.circular(150.0)),
        ),
        width: 300,
        height: 300,
        child: Image.asset(
          'assets/1.jpeg',
          fit: BoxFit.cover,
//          repeat: ImageRepeat.repeat,

//             color: Colors.blue,
//             colorBlendMode: BlendMode.screen,
        ),
      )),
    );
  }
}

class _ImagePageState2 extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                width: 10.0,
                color: Colors.yellow,
              ),
            borderRadius: BorderRadius.all(Radius.circular(150.0)),
            image: DecorationImage(
              image: AssetImage('assets/1.jpeg'),
              fit: BoxFit.cover,
  //          repeat: ImageRepeat.repeat,

  //             color: Colors.blue,
  //             colorBlendMode: BlendMode.screen,
            ),
        ),
      )),
    );
  }
}

class _ImagePageState3 extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: Center(
          child: ClipOval(
            child: Image.asset('assets/1.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,),
          )
      )
    );
  }
}

class _ImagePageState extends State<ImagePage> {
  File _image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('getImage'),
            onTap: () {
              getImage();
            },
          ),
        ],
      ),
    );
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
//    var image = await ImagePicker.pickImage(source: ImageSource.camera, maxWidth:300.0,maxHeight:500.0,imageQuality: 90);

    setState(() {
      _image = image;
    });
  }
}
