import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


/*
* https://www.imooc.com/article/284499
*
*
* */
class TextPainterSpanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextPainterSpanState();
  }

}

class TextPainterSpanState extends State<TextPainterSpanPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('TextPainterSpan'),),
      body: Column(
        children: <Widget>[
          richTextWid01(),
          richTextWid02(),
          richTextWid03(),
          richTextWid04(),
          richTextWid05(),

        ],
      ),
    );
  }


  Widget richTextWid01() {
    return RichText(
        text: TextSpan(
            text: 'TextDirection.ltr 文字默认居左',
            style: TextStyle(fontSize: 16.0, color: Colors.black)),
        textDirection: TextDirection.ltr);
  }

  Widget richTextWid02() {
    return RichText(
        text: TextSpan(
            text: 'TextDirection.rtl 文字默认居右',
            style: TextStyle(fontSize: 16.0, color: Colors.black)),
        textDirection: TextDirection.rtl);
  }

  Widget richTextWid03() {
    return RichText(
        text: TextSpan(
            text: 'textDirection 与 textAlign 同时设置，优先看整体，文字居中',
            style: TextStyle(fontSize: 16.0, color: Colors.black)),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center);
  }

  //颜色
  Widget richTextWid04() {
    return RichText(
      text: TextSpan(
          text: '多种样式，如：',
          style: TextStyle(fontSize: 16.0, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: '红色',
                style: TextStyle(fontSize: 18.0, color: Colors.red)),
            TextSpan(
                text: '绿色',
                style: TextStyle(fontSize: 18.0, color: Colors.green)),
            TextSpan(
                text: '蓝色',
                style: TextStyle(fontSize: 18.0, color: Colors.blue)),
            TextSpan(
                text: '白色',
                style: TextStyle(fontSize: 18.0, color: Colors.white)),
            TextSpan(
                text: '紫色',
                style: TextStyle(fontSize: 18.0, color: Colors.purple)),
            TextSpan(
                text: '黑色',
                style: TextStyle(fontSize: 18.0, color: Colors.black))
          ]),
      textAlign: TextAlign.center);
  }

//  TextSpan 可以借助 recognizer 设置点击事件，包括点击/长按等；

  final TapGestureRecognizer recognizer = TapGestureRecognizer();

  void initState() {
    super.initState();
    recognizer.onTap = () {
      print('ontap');
      Fluttertoast.showToast(
          msg: "您好，欢迎点赞或关注!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          textColor: Colors.red,

      );
    };
  }


  Widget richTextWid05() {  return RichText(
      text: TextSpan(
          text: 'recognizer 为手势识别者，可设置点击事件，',
          style: TextStyle(fontSize: 17.0, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: '点我试试',
                style: TextStyle(fontSize: 17.0, color: Colors.blue),
                recognizer: recognizer)
          ]));
  }

}