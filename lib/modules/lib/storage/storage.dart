import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mmkv_flutter/mmkv_flutter.dart';


/*
https://github.com/renefloor/flutter_cache_manager

https://github.com/OpenFlutter/mmkv_flutter

https://github.com/mogol/flutter_secure_storage

https://pub.dev/packages/file_cache

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
            subtitle: Text('Generic cache manager for flutter. Saves web files on the storages of the device and saves the cache info using sqflite.'),
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

          new ListTile(

            title: Text('file_cache'),
            subtitle: Text("为flutter package项目缓存Json,Buffer,FileCacheImage。"),
            onTap: (){
              _itemClick(context,4);
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
        _downloadFile("http://g.hiphotos.baidu.com/image/h%3D300/sign=b5e4c905865494ee982209191df4e0e1/c2cec3fdfc03924590b2a9b58d94a4c27d1e2500.jpg");
        break;
      case 2:
        _getMmkv(context);
        break;
      case 3:
        _getSecureStorage(context);
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


    secureStorage.write(key: 'a123', value: '4234234');
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


  final secureStorage = new FlutterSecureStorage();

  _getSecureStorage(BuildContext context) async {
    print(await  secureStorage.read(key: 'a123'));


  }

  _downloadFile(String url){
    DefaultCacheManager().getFile(url).listen((FileInfo f) {
        print("${f.originalUrl}   ${f.validTill}   ${f.file.path}");
    }).onError((e) {
      print("getFile(url) error ");
    });

    // DefaultCacheManager().emptyCache();
  }
}