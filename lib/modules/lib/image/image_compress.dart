import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_jpeg/image_jpeg.dart';
import 'package:image_picker/image_picker.dart';
//用于图像上传之前转jpeg缩放压缩，调用Android或iOS原生功能进行处理，性能较高，支持的源图像格式也更多。

//https://pub.dev/packages/image_jpeg
class ImageCompressPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ImageCompressPageState();
  }

}

/*
* // 调用 encodeJpeg ，返回输出的文件名
String newfileName = await ImageJpeg.encodeJpeg(imageFile.path, newfile, 70, JpgImageWidth, JpgImageHeigh);

// 调用encodeImageWithRes从资源文件中加载并处理，返回bytes
List<int> data = await ImageJpeg.encodeImageWithRes(resName, 70, 'drawable', 1000, 1000,  0, 10, 4);

// 加载资源文件（可以不是图像）
List<int> data = await ImageJpeg.loadResFile(resName);

// 高斯模糊
List<int> data = await ImageJpeg.blurImageWithFlie(imageFile.path, 10, 4, 0);

// 获取资源文件信息
var sv = await ImageJpeg.getResImageInfo(resName);

// 获取文件信息
var sv = await ImageJpeg.getInfo(imageFile.path);

* */

class _ImageCompressPageState extends State<ImageCompressPage>{
  File _image;
  var _imageInfo;
  var _compressImage;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageCompressPage'),
      ),


      body: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('getImage'),
            onTap: (){
              getImage();
            },
          ),

          _image!=null?Image.file(_image):Image.asset('assets/1.jpeg'),

          _image!=null?Text(_imageInfo.toString()):Divider(),

          _compressImage!=null?Image.file(File(_compressImage)):Image.asset('assets/2.jpeg'),
        ],
      ),
    );
  }

  Future getImage() async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    var image = await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth:300.0,maxHeight:500.0,imageQuality: 90);
    var sv = await ImageJpeg.getInfo(image.path);
    _compressImage = await ImageJpeg.encodeJpeg(image.path, null, 70, 100, 100);
    setState(() {
      _imageInfo = sv;
      _image = image;
    });
  }
}