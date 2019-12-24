import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.jianshu.com/p/3afc110b0fee
* ({
    Key key,
    this.message,
    this.height,
    this.padding,
    this.animation,
    this.target,
    this.verticalOffset,
    this.preferBelow,
  }) : super(key: key);
* */
class ToolTipPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip轻量级提示'),
      ),
      body: Column(
        children: <Widget>[
          Tooltip(
            // 长按显示的内容
            message: '点鸡',
            child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557744149&di=f68af941c41b28a7fd7484165f9c77c4&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201512%2F12%2F20151212193107_ujGZV.jpeg'),
          ),

        ],
      ),
    );
  }


  Widget toolTipItemWid(var str, var color) {
    return Tooltip(
        message: str,
        child: Container(
            width: 150.0,
            height: 60.0,
            color: color,
            child: Center(
                child: Text(str,
                    style: TextStyle(color: Colors.white, fontSize: 16.0)))));
  }
}