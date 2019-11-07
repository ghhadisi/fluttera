import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class TransparentImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TransparentImagePageState();
  }

}


//Image(image: CachedNetworkImageProvider(url))


class _TransparentImagePageState extends State <TransparentImagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text("TransparentImagePage"),
    ),

    body:


//      Container(
//          child: FadeInImage.memoryNetwork(
//            placeholder: kTransparentImage,
//            image: 'https://picsum.photos/250?image=9',
//          ),
//        ),
//      );


    CachedNetworkImage(
      imageUrl: "http://via.placeholder.com/200x150",
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: imageProvider,
        fit: BoxFit.cover,
        colorFilter:
        ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
        ),
      ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),

    );
  }

}