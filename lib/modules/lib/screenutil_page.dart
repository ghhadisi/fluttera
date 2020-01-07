import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
*https://github.com/OpenFlutter/flutter_screenutil/
*
*
ScreenUtil.pixelRatio       //设备的像素密度
ScreenUtil.screenWidth      //设备宽度
ScreenUtil.screenHeight     //设备高度
ScreenUtil.bottomBarHeight  //底部安全区距离，适用于全面屏下面有按键的
ScreenUtil.statusBarHeight  //状态栏高度 刘海屏会更高  单位px
ScreenUtil.textScaleFactory //系统字体缩放比例

ScreenUtil().scaleWidth  // 实际宽度的dp与设计稿px的比例
ScreenUtil().scaleHeight // 实际高度的dp与设计稿px的比例

*
* */
class ScreenUtilPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('ScreenUtil'),),
      body: Column(
        children: <Widget>[
          Text('Device width:${ScreenUtil.screenWidth}px'),
          Text('Device height:${ScreenUtil.screenHeight}px'),
          Text('Device width:${ScreenUtil.screenWidthDp}dp'),
          Text('Device height:${ScreenUtil.screenHeightDp}dp'),
          Text('Device pixel density:${ScreenUtil.pixelRatio}'),
          Text('Bottom safe zone distance:${ScreenUtil.bottomBarHeight}dp'),
          Text('Status bar height:${ScreenUtil.statusBarHeight}dp'),
          Text(
            'Ratio of actual width dp to design draft px:${ScreenUtil().scaleWidth}',
            textAlign: TextAlign.center,
          ),
          Text(
            'Ratio of actual height dp to design draft px:${ScreenUtil().scaleHeight}',
            textAlign: TextAlign.center,
          ),


          Container(width:double.infinity,height: ScreenUtil().setWidth(540),color: Colors.red,),
          SizedBox(
            height: ScreenUtil().setHeight(100),

          ),
          Text('System font scaling factor:${ScreenUtil.textScaleFactor}'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'My font size is 24px on the design draft and will not change with the system.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(24),
                  )),
              Text(
                  'My font size is 24px on the design draft and will change with the system.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil()
                          .setSp(24, allowFontScalingSelf: true))),
            ],
          ),
        ],
      ),
    );
  }

}