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
//class TimerChannel : IChannelInit {
//    private val CHANNEL_TIMMER = "com.hss.jfw/timer"
//
//    private  val  TAG = "TimerChannel"
//
//    override fun init(flutterActivity: FlutterActivity) {
//        EventChannel(flutterActivity.flutterView, CHANNEL_TIMMER).setStreamHandler(eventHandler2)
//        Log.e(TAG, "init")
//    }
//
////    private val methodCallHandler = MethodChannel.MethodCallHandler();
//
//    private val eventHandler2 = object:new EventChannel.StreamHandler() {
//        @Override
//        public void onListen(Object arguments, final EventChannel.EventSink events) {
//            events.success("我来自 " + TAG +" !! 使用的是 EventChannel 方式");
//        }
//
//        @Override
//        public void onCancel(Object arguments) {
//        }
//    }
//
//}
