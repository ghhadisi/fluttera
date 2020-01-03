import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
const RaisedButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,          // 按钮文字主题
    Color textColor,                    // 子元素颜色
    Color disabledTextColor,            // 不可点击时子元素颜色
    Color color,                        // 按钮背景色
    Color disabledColor,                // 不可点击时按钮背景色
    Color highlightColor,               // 点击高亮时按钮背景色
    Color splashColor,                  // 水波纹颜色
    Brightness colorBrightness,         // 颜色对比度
    double elevation,                   // 阴影高度
    double highlightElevation,          // 高亮时阴影高度
    double disabledElevation,           // 不可点击时阴影高度
    EdgeInsetsGeometry padding,         // 子元素周围边距
    ShapeBorder shape,                  // 按钮样式
    Clip clipBehavior = Clip.none,      // 抗锯齿剪切效果
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,         // 动画时长
    Widget child,
})

const FlatButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,          // 按钮文字主题
    Color textColor,                    // 子元素颜色
    Color disabledTextColor,            // 不可点击时子元素颜色
    Color color,                        // 按钮背景色
    Color disabledColor,                // 不可点击时按钮背景色
    Color highlightColor,               // 点击高亮时按钮背景色
    Color splashColor,                  // 水波纹颜色
    Brightness colorBrightness,         // 颜色对比度
    EdgeInsetsGeometry padding,         // 子元素周围边距
    ShapeBorder shape,                  // 按钮样式
    Clip clipBehavior = Clip.none,      // 抗锯齿剪切效果
    MaterialTapTargetSize materialTapTargetSize,
    @required Widget child,
  })

const OutlineButton({
    Key key,
    @required VoidCallback onPressed,
    ButtonTextTheme textTheme,          // 按钮文字主题
    Color textColor,                    // 文字颜色
    Color disabledTextColor,            // 不可点击时文字颜色
    Color color,                        // 按钮背景色
    Color highlightColor,               // 高亮时颜色
    Color splashColor,                  // 水波纹颜色
    double highlightElevation,          // 高亮时阴影高度
    this.borderSide,                    // 边框样式
    this.disabledBorderColor,           // 不可点击时边框颜色
    this.highlightedBorderColor,        // 高亮时边框颜色
    EdgeInsetsGeometry padding,         // 内容周围边距
    ShapeBorder shape,                  // 按钮样式
    Clip clipBehavior = Clip.none,      // 抗锯齿剪切效果
    Widget child,
})




RaisedButton ：凸起的按钮，其实就是 Material Design 风格的 Button
FlatButton ：扁平化的按钮
OutlineButton：线框按钮
IconButton ：图标按钮
ButtonBar:按钮组
FloatingActionButton:浮动按钮




*
* onPressed VoidCallback ，一般接收一个
方法
必填参数，按下按钮时触发的回调，接收一个
方法，传 null 表示按钮禁用，会显示禁用相关
样式
child Widget 文本控件
湖北众猿腾网络科技有限公司
textColor Color 文本颜色
color Color 按钮的颜色
disabledColor Color 按钮禁用时的颜色
disabledTextColor Color 按钮禁用时的文本颜色
splashColor Color 点击按钮时水波纹的颜色
highlightColor Color 点击（长按）按钮后按钮的颜色
elevation double 阴影的范围，值越大阴影范围越大
padding 内边距
shape 设置按钮的形状
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(10),
)
shape: CircleBorder(
side: BorderSide(
color: Colors.white,
)
)



floatingActionButton:

child 子视图，一般为 Icon，不推荐使用文字
tooltip FAB 被长按时显示，也是无障碍功能
backgroundColor 背景颜色
elevation 未点击的时候的阴影
hignlightElevation 点击时阴影值，默认 12.0
onPressed 点击事件回调
shape 可以定义 FAB 的形状等
mini 是否是 mini 类型默认 false

InkWell



使用 InkWell 时内外层均不建议添加背景色，InkWell 默认的水波纹颜色很浅，背景色会遮挡波纹效果；

通过修改 splashColor: Colors.greenAccent, 属性可以动态修改水波纹的波纹颜色，但如果修改高亮色属性 highlightColor，则相当于修改背景色；

请一定添加 InWell 手势触发事件，如 onTap 等。



* */
class ButtonsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonsPageState();
  }
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {
            print('FloatingActionButton');
          },
          backgroundColor: Colors.yellow),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text('buttons'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
//            color: Colors.red,
            iconSize: 36,
            hoverColor: Colors.blue,
            focusColor: Colors.amber,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.scanner),
//            color: Colors.red,
            iconSize: 36,
            hoverColor: Colors.blue,
            focusColor: Colors.amber,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: <Widget>[
        new Container(
            child: new InkWell(
          //   highlightColor: Colors.red,
          splashColor: Colors.greenAccent,
          onTap: () {
            Scaffold.of(context).showSnackBar(new SnackBar(
              content: new Text('Tap'),
            ));
          },
          child: Container(
            width: 120.0,
            height: 40.0,
            child: new Center(
              child: new Text("InkWell 测试水波纹"),
            ),
          ),
        )),
        Row(
          children: <Widget>[
            RaisedButton.icon(icon: Icon(Icons.ac_unit), label: Text('RaisedButton'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))), onPressed: () => {}),
            FlatButton.icon(icon: Icon(Icons.ac_unit), label: Text('FlatButton'),
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))), onPressed: () => {}),
          ],
        ),


        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('普通按钮'),
              onPressed: () {},
            ),
            SizedBox(width: 20),
            RaisedButton(
              child: Text('有颜色的按钮'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                print('点击了');
              },
            ),
            SizedBox(width: 20),
            RaisedButton(
              child: Text('阴影按钮'),
              textColor: Colors.white,
              color: Colors.blue,
              elevation: 10,
              onPressed: () {
                print('点击了');
              },
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 60,
              child: RaisedButton(
                child: Text('有宽高的按钮'),
                textColor: Colors.white,
                color: Colors.blue,
                elevation: 10,
                onPressed: () {
                  print('点击了');
                },
              ),
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
                child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Padding(
                      child: Icon(Icons.ac_unit),
                      padding: EdgeInsets.only(right: 10.0)),
                  Text('RaisedButton')
                ]),
                textColor: Colors.deepPurple,
                onPressed: () => {}
                )
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                child: RaisedButton(
                  child: Text('全屏按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  elevation: 10,
                  onPressed: () {
                    print('点击了');
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                child: RaisedButton(
                  child: Text('带圆角的按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  elevation: 10,
                  onPressed: () {
                    print('点击了');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  splashColor: Colors.red,
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: () {
                    print("圆形按钮");
                  }),
            ),
            FlatButton(
              child: Text("按钮"),
              color: Colors.blue,
              textColor: Colors.yellow,
              onPressed: () {
                print('FlatButton');
              },
            ),
            SizedBox(width: 10),
            OutlineButton(
                child: Text("按钮"),
                //  color: Colors.red,  //没有效果
                //  textColor: Colors.yellow,
                onPressed: () {
                  print('FlatButton');
                })
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('登录'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("宽度高度");
                  },
                ),
                RaisedButton(
                  child: Text('注册'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print("宽度高度");
                  },
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 50,
                child: OutlineButton(child: Text("注册"), onPressed: () {}),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class _ButtonsPageState2 extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons'),
        actions: <Widget>[],
      ),
      body: Column(children: <Widget>[]),
    );
  }
}
