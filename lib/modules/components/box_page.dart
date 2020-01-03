import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'box/constainedbox_page.dart';
import 'box/sizedbox_page.dart';
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
    }
  }
}