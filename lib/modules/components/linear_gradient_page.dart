import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* https://www.imooc.com/article/284287
*
* LinearGradient 中设置渐变色需要两种颜色以上才会有效果；

设置多种颜色，若没有其他设置，每种颜色所占比例均分为 1:1:...:1;

小菜尝试如果设置所占比例，可以多设置几个相同色值，只是这种方式不太合理；

可以通过设置 begin 和 end 来调整渐变色的位置，小菜建议多多尝试；

TileMode 中包括三个状态：clamp 为默认方式，自动延伸；repeated 重复效果，建议与 begin 和 end 共同使用效果为佳；
* mirror 镜面效果，即对称效果。

BoxDecoration 在使用过程时不可与背景色 color 同用


* */
class LinearGradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      _childChangeWid(
          '两种颜色 均分',
          BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
      _childChangeWid(
          '多种颜色 均分',
          BoxDecoration(
              gradient: const LinearGradient(colors: [
            Color(0xFFFFC125),
            Color(0xFFFF7F24),
            Color(0xFFFF4040)
          ]))),
      _childChangeWid(
          '两种颜色 1:3',
          BoxDecoration(
              gradient: const LinearGradient(colors: [
            Color(0xFFFFC125),
            Color(0xFFFF7F24),
            Color(0xFFFF7F24),
            Color(0xFFFF7F24)
          ]))),
      _childChangeWid(
          '两种颜色 垂直均分',
          BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
      _childChangeWid(
          '两种颜色 前半部均分 延伸',
          BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment(-1.0, 0.0),
                  end: Alignment(0.0, 0.0),
                  tileMode: TileMode.clamp,
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
      _childChangeWid(
          '两种颜色 均分 重复',
          BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment(-1.0, 0.0),
                  end: Alignment(0.0, 0.0),
                  tileMode: TileMode.repeated,
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
      _childChangeWid(
          '两种颜色 均分 镜面反射',
          BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment(-1.0, 0.0),
                  end: Alignment(0.0, 0.0),
                  tileMode: TileMode.mirror,
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
      _childChangeWid(
          '两种颜色 设置起始位置与终止位置',
          BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.5, 0.0),
                  tileMode: TileMode.repeated,
                  colors: [Color(0xFFFFC125), Color(0xFFFF7F24)])))
    ]);
  }

  Widget _childChangeWid(var des, Decoration childDec) {
    return Container(
        height: 60.0,
        alignment: Alignment.center,
        child: Text(des, style: TextStyle(color: Colors.white, fontSize: 16.0)),
        margin: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
        decoration: childDec);
  }
}
