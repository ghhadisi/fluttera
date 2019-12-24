import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.imooc.com/article/284496

* 而 Flutter 也提供了监听返回导航的 WillPopScope，其中的回调方法返回一个 boolean 类型，true 时退出页面，false 时不退出，
* 小菜设置在 1500ms 之内连续点击两次弹出提示框。在对时间进行监听时，小菜用到 Duration 可以设置时分秒毫秒微秒等，方便快捷。

* */
class DoubleBackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DoubleBackPageState();
  }
}

class DoubleBackPageState extends State<DoubleBackPage> {
  var _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
          body: new SafeArea(
              top: true, child: new Center(child: Text('content'))),
        ),
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) >
                  Duration(milliseconds: 1500)) {
            _lastPressedAt = DateTime.now();
            return false;
          } else {
            return showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return ExitDialog(
                      title: '您确定要退出吗？',
                      onCancelEvent: () {
                        Navigator.pop(context, false);

                      },
                      onSureEvent: () {
                        Navigator.pop(context, true);
                      });
                });
          }
        });
  }


}

class ExitDialog extends Dialog {
  var title;
  Function onCancelEvent;
  Function onSureEvent;

  ExitDialog({
    Key key,
    @required this.title,
    @required this.onCancelEvent,
    @required this.onSureEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.all(12.0),
        child: new Material(
            type: MaterialType.transparency,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      decoration: ShapeDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ))),
                      margin: const EdgeInsets.all(12.0),
                      child: new Column(children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 40.0, 10.0, 28.0),
                            child: Center(
                                child: new Text(title,
                                    style: new TextStyle(
                                      fontSize: 20.0,
                                    )))),

                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: onCancelEvent,
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 22.0, 0.0, 20.0),
                                      child: Text('取消',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff4285f4),
                                              fontSize: 15.0))),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: this.onSureEvent,
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 22.0, 0.0, 20.0),
                                      child: Text('退出',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xffff4444),
                                              fontSize: 15.0))),
                                ),
                              ),
                            ])
                      ]))
                ])));
  }


}
