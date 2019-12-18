import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
https://www.imooc.com/article/284287

* 小菜以前处理过沉浸式状态栏，效果很不错，但是有时也需要保护状态栏，此时需要 SafeArea 配合一下。
* 通过调整 SafeArea 的 top 的 bool 属性来判断是否保护状态栏，
* bottom 属性可以在有虚拟返回状态栏的测试机中尝试。

* */
class StatubarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
        top: false,
        child: Scaffold(
            body: Container(
                color: Colors.blue,
                child: Image.asset('assets/lake.png'))));
  }
}
