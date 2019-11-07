import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image/image_compress.dart';
import 'image/image_picker.dart';
import 'image/advance_net_work_image.dart';
import 'image/cached_network_image.dart';
import 'image/transparent_image.dart';

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
    }
  }
}