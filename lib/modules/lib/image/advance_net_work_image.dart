import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';

//https://pub.dev/packages/flutter_advanced_networkimage#-readme-tab-
class AdvanceNetWorkImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AdvanceNetWorkImagePageState();
  }

}

class _AdvanceNetWorkImagePageState extends State<AdvanceNetWorkImagePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AdvanceNetWorkImagePage'),
      ),

      body:

      TransitionToImage(
        image: AdvancedNetworkImage('https://upload-images.jianshu.io/upload_images/15266155-de4c27114b3cf859?imageMogr2/auto-orient/strip|imageView2/2/w/612',
          loadedCallback: () {
            print('It works!');
          },
          loadFailedCallback: () {
            print('Oh, no!');
          },
          loadingProgress: (double progress,List<int> data) {
            print('Now Loading: $progress');
          },
        ),
        loadingWidgetBuilder: (  BuildContext context,
            double progress,
            Uint8List imageData) => Text(progress.toString()),
        fit: BoxFit.contain,
        placeholder: const Icon(Icons.refresh),
        width: 400.0,
        height: 300.0,
        enableRefresh: true,
      )


     /* Container(
            child: ZoomableWidget(
              minScale: 0.3,
              maxScale: 2.0,
              // default factor is 1.0, use 0.0 to disable boundary
              panLimit: 0.8,
              child: Container(
                child: TransitionToImage(
                  image:
                  AdvancedNetworkImage('https://hao1.qhimg.com/t010e35caa37b7343f9.png', timeoutDuration: Duration(minutes: 1)),
                  // This is the default placeholder widget at loading status,
                  // you can write your own widget with CustomPainter.
                  placeholder: CircularProgressIndicator(),
                  // This is default duration
                  duration: Duration(milliseconds: 300),
                ),
              ),
            ),
          ),
*/


//      ListView(
//        children: <Widget>[
//
//          Container(
//            child:  Image(
//              width: 250,
//              height: 150,
//              image: AdvancedNetworkImage(
//                'https://hao1.qhimg.com/t010e35caa37b7343f9.png',
////              header: header,
//                useDiskCache: true,
//                cacheRule: CacheRule(maxAge: const Duration(days: 7)),
//
//              ),
//              fit: BoxFit.cover,
//            ),
//          ),
//
//          Divider(),
//
//
//        ],
//      ),
    );
  }

}