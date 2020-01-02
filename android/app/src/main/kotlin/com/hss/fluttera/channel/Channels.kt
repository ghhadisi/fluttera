package com.hss.fluttera.channel

import java.util.ArrayList

import io.flutter.app.FlutterActivity

class Channels : IChannelInit {

    var list: MutableList<IChannelInit> = ArrayList()

    constructor(){
        list.add(AesChannel())
        list.add(TimerChannel())
    }


    override fun init(flutterActivity: FlutterActivity) {
        list.forEach {
            it.init(flutterActivity);
        }
    }
}
