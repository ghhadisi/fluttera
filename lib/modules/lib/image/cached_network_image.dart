import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
https://www.imooc.com/article/284360
placeholder 用来在加载图片时的缓冲过程，可以是动态 loading 亦或者 Widget 等；

errorWidget 用来网络图片加载异常时展现，可自定义进行展示。

      Tips: 在使用加载 loading 或默认图片时，建议限制 loading 和默认图片的大小，这样不会出现默认图片比加载网络图更大的效果。


* */
class CachedNetworkImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CachedNetworkImagePageState();
  }

}

class _CachedNetworkImagePageState extends State<CachedNetworkImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CachedNetworkImagePage'),
      ),


      body: Container(
        child: CachedNetworkImage(
          imageUrl: "http://via.placeholder.com/350x150",
          placeholder: (context, url) =>  Container(
              width: 50.0, height: 50.0, child: CircularProgressIndicator()),

          errorWidget: (context, url, error) =>  Container(
              height: 300.0, child: Image.asset('assets/1.jpeg')),


        ),
      ),
    );
  }

}