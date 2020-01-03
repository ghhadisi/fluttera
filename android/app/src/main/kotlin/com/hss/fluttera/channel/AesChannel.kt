//package com.hss.fluttera.channel
//
//import android.util.Log
//
//import io.flutter.app.FlutterActivity
//import io.flutter.plugin.common.MethodCall
//import io.flutter.plugin.common.MethodChannel
//import io.flutter.plugin.common.MethodChannel.Result
////import android.support.annotation.UiThread
////MethodChannel：用于传递方法调用；
//class AesChannel : IChannelInit {
//    private val CHANNEL_AES = "com.hss.jfw/aes"
//
//    private  val  TAG = "AesChannel"
//
//    override fun init(flutterActivity: FlutterActivity) {
//       MethodChannel(flutterActivity.flutterView, CHANNEL_AES).setMethodCallHandler(methodCallHandler2)
//        Log.e(TAG, "init")
//    }
//
////    private val methodCallHandler = MethodChannel.MethodCallHandler();
//
//    private val methodCallHandler2 = object:MethodChannel.MethodCallHandler {
////        @UiThread
//        override fun onMethodCall(methodCall: MethodCall, result: Result) {
//
//            Log.e(TAG, "methodCallHandler")
//
//            var methodName = methodCall.method;
//            when (methodName){
//                "encrypt"->{
//                    Log.e(TAG, "encrypt")
////                    result.success(AES128Utils.encrypt(methodCall.argument("text")))
//                }
//                "decrypt" ->{
//                    Log.e(TAG, "decrypt")
////                    result.success(AES128Utils.decrypt(methodCall.argument<String>("text")))
//
//                }
//                else -> {
//                    result.notImplemented();
//                }
//            }
//        }
//
//    }
//
//}
