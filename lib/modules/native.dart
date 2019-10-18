import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class NativeModule extends StatelessWidget{

  static const platform = const MethodChannel('samples.flutter.io/battery');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NativeModule'),
      ),
      body: ListView(
        children: <Widget>[
          new ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('get battery'),
            onTap: (){
              _getBatteryLevel().then((str)=>{
                print(str)
              });
            },
          ),
        ],
      ),
    );
  }

  Future<Null>  _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    return batteryLevel;
  }

}