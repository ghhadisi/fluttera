import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'box/FittedBox_page.dart';
import 'box/FractionallySizedBox_page.dart';
import 'box/OverflowBox_page.dart';
import 'box/SizedOverflowBox_page.dart';
import 'box/constainedbox_page.dart';
import 'box/limitedbox_page.dart';
import 'box/sizedbox_page.dart';
import 'box/unconstrainedbox_page.dart';
/*
 https://www.imooc.com/article/294693

 https://www.imooc.com/article/295161

 https://www.imooc.com/article/295499
* */
class BoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('boxs'),),

      body: ListView(children: <Widget>[
        Divider(),
        new ListTile(
          title: Text('SizedBox'),
            subtitle: Text('创建固定大小的约束Box'),
          onTap: (){
            _goModule(context,1);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),


        Divider(),
        new ListTile(
          title: Text('ConstrainedBox'),
          subtitle: Text('约束方式主要是对 constraints 的操作；相对于 SizedBox 约束更为灵活'),
          onTap: (){
            _goModule(context,2);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),

        Divider(),
        new ListTile(
          title: Text('UnconstrainedBox'),
          subtitle: Text('UnconstrainedBox 不会对子 Widget 进行约束限制，按照其子 Widget 大小进行绘制；小菜理解为去除父 Widget 的限制，让子 Widget 完全绘制'),
          onTap: (){
            _goModule(context,3);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),


        Divider(),
        new ListTile(
          title: Text('LimitedBox'),
          subtitle: Text('LimitedBox 主要是在不受父 Widget 限制时，通过 maxHeight / maxWidth 对子 Widget 的约束，且 maxHeight / maxWidth 必须 >= 0.0;'),
          onTap: (){
            _goModule(context,4);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),


        Divider(),
        new ListTile(
          title: Text('FractionallySizedBox'),
          subtitle: Text('FractionallySizedBox 可以通过对齐方式和设置宽高因子并结合父 Widget 宽高来约束子 Widget；采用宽高因子使用更加灵活；'),
          onTap: (){
            _goModule(context,5);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),

        Divider(),
        new ListTile(
          title: Text('FittedBox'),
          subtitle: Text('FittedBox 主要通过 fit 填充方式和 alignment 对齐方式对子 Widget 进行约束；且 fit / alignment 不可为空，对于图片的裁剪很有效'),
          onTap: (){
            _goModule(context,6);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),


        Divider(),
        new ListTile(
          title: Text('OverflowBox'),
          subtitle: Text('OverflowBox 通过设置最大最小宽高对子 Widget 进行约束，且与父 Widget 相关，子 Widget 可能会溢出父 Widget'),
          onTap: (){
            _goModule(context,7);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),

        Divider(),
        new ListTile(
          title: Text('SizedOverflowBox'),
          subtitle: Text('SizedOverflowBox 是 SizedBox 与 OverflowBox 的结合，小菜简单理解 SizedBox 设置基本约束，OverflowBox 设置子 Widget 与父 Widget 关系，是否溢出'),
          onTap: (){
            _goModule(context,8);

          },
          contentPadding: EdgeInsets.only(left: 20),
        ),

      ],),
    );
  }


  void _goModule(context,int index) {
    switch (index) {
      case 1:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return SizedBoxPage();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ConstrainedBoxPage();
        }));
        break;
      case 3:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return UnconstrainedBoxPage();
        }));
        break;
      case 4:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return LimitedBoxPage();
        }));
        break;
      case 5:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FractionallySizedBoxPage();
        }));
        break;

      case 6:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return FittedBoxPage();
        }));
        break;

      case 7:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return OverflowBoxPage();
        }));
        break;
      case 8:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return SizedOverflowBoxPage();
        }));
        break;
    }
  }
}