import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

/// 跳转到首页Splash
var splashHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new SplashPage();
    });

/// 跳转到主页
var homeHandler = new Handler(
handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});