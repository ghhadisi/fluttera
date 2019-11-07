import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }

}