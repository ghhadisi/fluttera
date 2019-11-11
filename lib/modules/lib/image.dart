import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image/carousel_slider.dart';
import 'image/image_compress.dart';
import 'image/image_picker.dart';
import 'image/advance_net_work_image.dart';
import 'image/cached_network_image.dart';
import 'image/transparent_image.dart';
import 'image/zoomable_image.dart';

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
            subtitle: Text('高级图像缓存加载和缩放控制'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),

          new ListTile(

            title: Text('transparent_image'),
            subtitle: Text('简单的透明图像，表示为Uint8List。在加载图片时可以用来做为占位符'),
            onTap: (){
              _goModule(context,3);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),


          new ListTile(

            title: Text('Cached network image'),
            subtitle: Text('Flutter库来加载和缓存网络图像。也可以与占位符和错误小部件一起使用'),
            onTap: (){
              _goModule(context,4);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),


          new ListTile(

            title: Text('image_jpeg'),
            subtitle: Text('用于图像上传之前转jpeg缩放压缩，调用Android或iOS原生功能进行处理，性能较高，支持的源图像格式也更多。'),
            onTap: (){
              _goModule(context,5);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),

//          https://pub.dartlang.org/packages/image
          new ListTile(

            title: Text('image'),
            subtitle: Text('DART库，提供以各种不同的文件格式加载、保存和操作图像的能力。该库不依赖于DART：IO，因此它可以用于服务器和Web应用程序。'),
            onTap: (){
              _goModule(context,6);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),

          new ListTile(
//https://pub.dev/packages/zoomable_image#-installing-tab-
            title: Text('zoomable_image '),
            subtitle: Text('供图像查看和手势缩放操作功能'),
            onTap: (){
              _goModule(context,7);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),

          new ListTile(
//https://pub.dev/packages/image_carousel#-installing-tab-
            title: Text('image_carousel '),
            subtitle: Text('Flutter图像展示控件，可以左右划动切换上一张下一张图像，还结合了zoomable_image可以点击后缩放查看。支持Asset和网络图像。'),
            onTap: (){
              _goModule(context,8);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),


          new ListTile(
//https://pub.dev/packages/carousel_slider#-installing-tab-
            title: Text('carousel_slider '),
            subtitle: Text('一个支持手势划动和自动播放的图像展示控件。'),
            onTap: (){
              _goModule(context,9);
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

      case 3:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return  TransparentImagePage();
        }));
        break;

      case 4:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return  CachedNetworkImagePage();
        }));
        break;


      case 5:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return  ImageCompressPage();
        }));
        break;

      case 6:
//        Navigator.push(
//            context, new MaterialPageRoute(builder: (BuildContext context) {
//          return  ImageCompressPage();
//        }));
        break;

      case 7:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return  ZoomableImagePage();
        }));
        break;
      case 8:
        break;

      case 9:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return  CarouselSliderPage();
        }));
        break;
    }
  }
}