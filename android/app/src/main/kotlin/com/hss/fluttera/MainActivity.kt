package com.hss.fluttera

import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES
import android.os.Bundle
import android.util.Log
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugins.GeneratedPluginRegistrant

//import com.hss.fluttera.channel.Channels;

class MainActivity: FlutterActivity() {


  private  val CHANNEL = "samples.flutter.io/battery";


  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
     MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(methodCallHandler);
//    Channels().init(this)
  }

  private fun getBatteryLevel(): Int {
    var batteryLevel = -1;
    if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
      val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
      batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    } else {
      val intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
      batteryLevel = intent!!.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100 / intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
    }
    Log.e("android", "batteryLevel = " +batteryLevel);
    return batteryLevel;
  }

  private val methodCallHandler =  MethodCallHandler{
    methodCall: MethodCall, result: Result ->  {
        if (methodCall.method.equals("getBatteryLevel")){
          val batteryLevel = getBatteryLevel();
          if (batteryLevel != -1){
            result.success(batteryLevel);
          }else{
            result.error("UNAVAILABLE", "Battery level not available.", null);
          }
        }else{
          result.notImplemented();
        }
     }
  };

}
