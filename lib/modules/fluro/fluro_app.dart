import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/fluro/routes.dart';
import 'package:fluttera/modules/fluro/splash_page.dart';

import 'Application.dart';

//https://blog.csdn.net/huchengzhiqiang/article/details/91415777

//https://blog.csdn.net/baidu_32377671/article/details/83788125


class FluroApp extends StatelessWidget{

  FluroApp(){
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'FluroApp',
      /// 生成路由
      onGenerateRoute: Application.router.generator,


      debugShowCheckedModeBanner: false,
      //----------------主要代码end
      theme: ThemeData(
        primaryColor:Colors.pink,
      ),

      home: SplashPage(),
    );
  }



}