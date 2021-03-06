import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:fluttera/modules/lib/image.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import 'lib/carousel_slider.dart';
import 'lib/flutter_spinkit.dart';
import 'lib/image/image_picker.dart';
import 'lib/flustars.dart';
import 'lib/msg_engine.dart';
import 'lib/picker/flutter_picker.dart';
import 'lib/provider_page.dart';
import 'lib/redux/redux_one_page.dart';
import 'lib/rx.dart';
import 'lib/screenutil_page.dart';
import 'lib/staggered_grid.dart';
import 'lib/storage/storage.dart';
import 'lib/url_launcher.dart';

class LibsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text('各种库'),
      ),
      body: ListView(
        children: <Widget>[

          new ListTile(

            title: Text('Image'),
            onTap: (){
              _goModule(context,1);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('Flustars'),
            onTap: (){
              _goModule(context,2);
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('toast'),
            onTap: (){
              _goModule(context,3);
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          Divider(),


          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_picker'),
            onTap: (){
              _goModule(context,4);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_spinkit'),
            subtitle: Text('加载动画。支持多种常用效果，非常酷炫'),
            onTap: (){
              _goModule(context,5);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_staggered_grid_view'),
            subtitle: Text('瀑布流列表插件，可以支持不同大小的列'),
            onTap: (){
              _goModule(context,6);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('carousel_slider'),
            subtitle: Text('一个支持手势划动和自动播放的图像展示控件'),
            onTap: (){
              _goModule(context,7);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),


          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('url_launcher'),
            subtitle: Text('用于在Android和iOS上启动URL。支持网络，电话，短信和电子邮件方案'),
            onTap: (){
              _goModule(context,8);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),


          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('flutter_msg_engine'),
            subtitle: Text('消息引擎, 注册一个消息，在任何地方响应并处理。。'),
            onTap: (){
              _goModule(context,9);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            title: Text('rx'),
            onTap: (){
              _goModule(context,10);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),

          new ListTile(
            title: Text('flutter_udid'),
            subtitle: Text("用于在Android/iOS设备上获取一个持久的 UDID，即使重新安装App"),
            onTap: (){
              _goModule(context,11);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          //https://github.com/mogol/flutter_secure_storage
          new ListTile(
            title: Text('storage'),

            onTap: (){
              _goModule(context,12);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          //https://github.com/mogol/flutter_secure_storage
          new ListTile(
            title: Text('provider'),

            onTap: (){
              _goModule(context,13);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          //https://github.com/OpenFlutter/flutter_screenutil/
          new ListTile(
            title: Text('flutter_screenutil'),
            subtitle: Text("屏幕适配"),
            onTap: (){
              _goModule(context,14);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          //https://pub.dev/packages/flutter_redux#-readme-tab-
          //https://blog.csdn.net/xcf111/article/details/90752577
          new ListTile(
            title: Text('redux'),
            subtitle: Text("Store位于整个APP的顶层，存储和管理state；Action简单点就是动作，通过发起一个Action来告诉Reducer该更新状态了；Reducer根据Action产生新的状态；"),
            onTap: (){
              _goModule(context,15);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
        ],
      ),
    );
  }


  void _goModule(context,int index) {
    switch (index) {
      case 1:
        Navigator.push(
            context, new MaterialPageRoute(builder: (BuildContext context) {
          return ImagePage();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FlustarsPage();
        }));
        break;

      case 3:
        Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        break;
      case 4:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FlutterPickerPage();
        }));
        break;
      case 5:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return SpinkitPage();
        }));
        break;

      case 6:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return StaggeredGridPage();
        }));
        break;

      case 7:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return CarouselSliderPage();
        }));
        break;

      case 8:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return UrlLauncherPage();
        }));
        break;
      case 9:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return MsgEnginePage();
        }));
        break;
      case 10:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return RxPage();
        }));
        break;
      case 11:
          FlutterUdid.udid.then((val){
            print(val);
          });
        break;
      case 12:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return StoragePage();
        }));
        break;

      case 13:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ProviderPage();
        }));
        break;

      case 14:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ScreenUtilPage();
        }));
        break;
      case 15:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ReduxOnePage();
        }));
        break;
    }
  }
}