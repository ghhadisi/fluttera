import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/lib/rx/rx_dart.dart';
import 'package:fluttera/modules/lib/rx/rx_widgets.dart';

class RxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('rx 系列'),
      ),

      body: ListView(
        children: <Widget>[
          Divider(),
          new ListTile(
            //https://github.com/ReactiveX/rxdart
            leading: Icon(Icons.add,size: 40,),
            title: Text('rxdart'),
            subtitle: Text('RxDart是一种基于ReactiveX的谷歌Dart反应性函数编程库。谷歌Dart自带了一个非常不错的流API;RxDart没有尝试提供这个API的替代方案，而是在它上面添加了一些功能。'),
            onTap: (){
              _goModule(context,1);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('rx_widgets'),
            subtitle: Text('rx_widgets是一个包含基于流的Flutter Widgets和Widget帮助程序/便利类的程序包，它们有助于反应式编程风格，特别是与RxDart和RxCommands结合使用。'),
            onTap: (){
              _goModule(context,2);
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('rx_command'),
            subtitle: Text('RxCommand是针对事件处理程序的基于Reactive Extensions（Rx）的抽象。它基于ReactiveUI框架的ReactiveCommand。它大量使用了RxDart包。'),
            onTap: (){
              _goModule(context,3);
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

  void _goModule(BuildContext context, int i) {
    switch(i){
      case 1:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return RxDartPage();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return RxWidgetsPage();
        }));
        break;
      case 3:
        break;

    }
  }

}