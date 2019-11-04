import 'dart:io';

import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//https://github.com/Sky24n/flustars



/*
|-- city_select_page.dart 城市列表(索引&悬停)示例
|-- date_page.dart 日期格式化示例
|-- image_size_page.dart 获取网络/本地图片尺寸示例
|-- money_page.dart 金额(元转分/分转元)示例
|-- pinyin_page.dart 汉字转拼音示例
|-- regex_page.dart 正则工具类示例
|-- round_portrait_page.dart 圆形圆角头像示例
|-- timeline_page.dart 时间轴示例
|-- timer_page.dart 倒计时/定时任务示例
|-- widget_page.dart 获取Widget尺寸/屏幕坐标示例
*/

class FlustarsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flustars'),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('SpUtil 写入'),
            onTap: (){
              _goModule(context,1);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          new ListTile(

            title: Text('SpUtil 读取'),
            onTap: (){
              _goModule(context,2);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('Date util'),
            onTap: (){
              _goModule(context,3);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('TextUtil'),
            onTap: (){
              _goModule(context,4);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('DirectoryUtil'),
            onTap: (){
              _goModule(context,5);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('EnDecodeUtil'),
            onTap: (){
              _goModule(context,6);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          new ListTile(

            title: Text('TimelineUtil'),
            onTap: (){
              _goModule(context,7);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(

            title: Text('TimerUtil'),
            onTap: (){
              _goModule(context,8);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          new ListTile(

            title: Text('ScreenUtil'),
            onTap: (){
              _goModule(context,10);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          /*
          getWidth                  : 返回根据屏幕宽适配后尺寸.
getHeight                 : 返回根据屏幕高适配后尺寸.
getWidthPx                : 返回根据屏幕宽适配后尺寸.
getHeightPx               : 返回根据屏幕高适配后尺寸.
getSp                     : 返回根据屏幕宽适配后字体尺寸.
screenWidth               : 获取屏幕宽.
screenHeight              : 获取屏幕高.
screenDensity             : 获取屏幕密度.
appBarHeight              : 获取系统AppBar高度.
statusBarHeight           : 获取系统状态栏高度.
getScreenW(ctx)           : 当前屏幕 宽.
getScreenH(ctx)           : 当前屏幕 高.
getStatusBarH(ctx)        : 当前状态栏高度.
getBottomBarH(ctx)        : 当前BottomBar高度.
getScaleW(ctx,size)       : 返回根据屏幕宽适配后尺寸.
getScaleH(ctx,size)       : 返回根据屏幕高适配后尺寸.
getScaleSp(ctx,size)      : 返回根据屏幕宽适配后字体尺寸.
getScaleSp(ctx,size)      : 返回根据屏幕宽适配后字体尺寸.

///旧适配方法仅适用于纵屏适配。
///推荐使用以下新适配方法。
getAdapterSize(size)             : 返回适配后尺寸，可用于宽，高，字体尺寸.
getAdapterSizeCtx(ctx,size)      : 返回适配后尺寸，可用于宽，高，字体尺寸.
          * */
        ],
      ),
    );
  }


  void _goModule(context,int index) {
    switch (index) {
      case 1:
          SpUtil.putInt("key", 123);
        break;
      case 2:
           LogUtil.e("value =  ${SpUtil.getInt("key", defValue: 0)}");
        break;
      case 3:
        String  str;
//         str =  DateUtil.formatDateMs(DateTime.now().millisecondsSinceEpoch, format: DataFormats.full); // 2019-07-09 16:51:14
//            str =  DateUtil.formatDateStr("2019-07-09 16:51:14", format: "yyyy/M/d HH:mm:ss"); // 2019/7/9 16:51:14
        str =  DateUtil.formatDate(DateTime.now(), format: "yyyy/MM/dd HH:mm:ss");  // 2019/07/09 16:51:14
           LogUtil.e(str);
          break;
      case 4:
        String phoneNo = TextUtil.formatSpace4("15845678910"); // 1584 5678 910
        LogUtil.e(phoneNo);
        String num     = TextUtil.formatComma3("12345678"); // 12,345,678
        LogUtil.e(num);
        String phoneNo2 = TextUtil.hideNumber("15845678910");// 158****8910
        LogUtil.e(phoneNo2);
        break;

      case 5:
//        String path = DirectoryUtil.getTempPath(fileName: 'demo.png', category: 'image');

        Directory dir =  DirectoryUtil.createDirSync("aaa");

        LogUtil.e(dir.path);
        break;

      case 6:
        String str1 =EnDecodeUtil.encodeMd5('Java@1621');
        String str2 = EnDecodeUtil.encodeMd5("${str1}cpicwondersgroup");
        LogUtil.e(str2);
        break;

      case 7:
//        TimelineUtil.formatByDateTime(DateTime.now(), );
//        LogUtil.e(str2);
        break;

      case 8:
        TimerUtil  mTimerUtil = new TimerUtil(mInterval: 1000);
        mTimerUtil.setInterval(1000);
        mTimerUtil.setOnTimerTickCallback((value){
          LogUtil.e(value);
          if (value >=20){
            mTimerUtil.cancel();
          }
        });
        mTimerUtil.startTimer();
        break;
      case 9:
       /* ObjectUtil.isEmptyString();
        ObjectUtil.isEmpty(object);
        ObjectUtil.isEmptyMap(map);
        ObjectUtil.isEmptyList(list);
        */
        break;
      case 10:



         LogUtil.e('width = ${ScreenUtil.getScreenW(context)}');
         LogUtil.e('height = ${ScreenUtil.getScreenH(context)}');

         break;
    }
  }
}