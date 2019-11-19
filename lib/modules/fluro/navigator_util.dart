import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'Application.dart';
import 'routes.dart';

class NavigatorUtil{
  /// 跳转到主页面
  static void goHomePage(BuildContext context) {
    /// Routes.home 路由地址
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.home, replace: true,transition: TransitionType.fadeIn);

  // TransitionType.inFromRight//过场效果
  }
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
