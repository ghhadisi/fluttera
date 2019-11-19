import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String demoParams = "/deme_params";
  static String returnParams = "/return_params";
  static String transitionDemo = "/transitionDemo";
  static String transitionCustomDemo = "/transitionCustomDemo";
  static String transitionCupertinoDemo = "/transitionCupertinoDemo";

  static void configureRoutes(Router router) {

    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    /// 第一个参数是路由地址，第二个参数是页面跳转和传参，第三个参数是默认的转场动画，可以看上图
    /// 我这边先不设置默认的转场动画，转场动画在下面会讲，可以在另外一个地方设置（可以看NavigatorUtil类）
    router.define(root, handler: splashHandler);
    router.define(home, handler: homeHandler);
//    router.define(demoParams, handler: demoParamHandler);
//    router.define(returnParams, handler: returnParamHandler);
//    router.define(transitionDemo, handler: transitionDemoHandler);
//    router.define(transitionCustomDemo, handler: transitionDemoHandler);
//    router.define(transitionCupertinoDemo, handler: transitionDemoHandler);

  }


  //Application.router.navigateTo(context, "/home",transition: TransitionType.fadeIn);

/*

  String route = '/web?url=${Uri.encodeComponent(itemUrl)}&title=${Uri.encodeComponent(itemTitle)}';

  Application.router.navigateTo(context, route,transition: TransitionType.fadeIn);


  Application.router.navigateTo(context, '${Routes.web}?title=${Uri.encodeComponent(itemTitle)}&url=${Uri.encodeComponent(itemUrl)}',transition: TransitionType.fadeIn);

  Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage()),
                (route) => route == null);


路由执行startActivityForResult相似操作

Application.router.navigateTo(context,
              '${Routes.web}?title=${Uri.encodeComponent(itemTitle)}&url=${Uri
                  .encodeComponent(itemUrl)}',
              transition: TransitionType.fadeIn).then((result){
                if(result == "key"){
                  //执行func路由,func路由为弹出弹窗
                  Application.router.navigateTo(context, "/demo/func?message=$result");
                }
          });




*/


}
