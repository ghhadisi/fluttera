import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Application.dart';

class FluroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'FluroApp',
      /// 生成路由
      onGenerateRoute: Application.router.generator,
    );
  }

}