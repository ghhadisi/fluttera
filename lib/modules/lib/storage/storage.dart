import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmkv_flutter/mmkv_flutter.dart';


/*
https://github.com/renefloor/flutter_cache_manager

https://github.com/OpenFlutter/mmkv_flutter

https://github.com/mogol/flutter_secure_storage

*/
class StoragePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('StoragePage'),),



      body: ListView(
        children: <Widget>[
          new ListTile(
//
            title: Text('flutter_cache_manager'),
            onTap: (){
              _itemClick(context,1);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(

            title: Text('mmkv_flutter'),
            onTap: (){
              _itemClick(context,2);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(

            title: Text('flutter_secure_storage'),
            subtitle: Text("提供钥匙串和密钥库存储"),
            onTap: (){
              _itemClick(context,3);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
        ],
      ),
    );
  }


  void _itemClick(context,int index) {
    switch (index) {
      case 1:

        break;
      case 2:
        _getMmkv(context);
        break;
    }
  }

  MmkvFlutter mmkv;
  StoragePage(){
    _init();
  }
  _init()async{
    mmkv = await MmkvFlutter.getInstance();
    mmkv.setBool('boolKey', true);
    mmkv.setInt('intKey', 2);
    mmkv.setString('stringKey', 'aaaa');
  }

  _getMmkv(BuildContext context) async {
    var boolValue = await mmkv.getBool('boolKey');
    print(boolValue);
    var intValue = await mmkv.getInt('intKey');
    print(intValue);
    var strValue = await mmkv.getString('stringKey');
    print(strValue);
    Flushbar(title: 'hello', message: '${boolValue}  ${intValue}   ${strValue}',)..show(context);

  }
}