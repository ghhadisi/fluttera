import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:zoomable_image/zoomable_image.dart';

//https://pub.dev/packages/zoomable_image#-installing-tab-

class ZoomableImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ZoomableImagePageState();
  }

}

class _ZoomableImagePageState extends State <ZoomableImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
      title:  Text('ZoomableImage'),
      ),

      body: Text(' _imageStream.removeListener(_handleImageLoaded) err')

//      ZoomableImage(new AssetImage('assets/1.jpeg'),maxScale: 5.0,onTap: (){
//
//      },),
    );
  }

}