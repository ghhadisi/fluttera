import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
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
          child: Icon(Icons.add,color: Colors.black,size: 40,),
          onPressed: (){
            print('FloatingActionButton');
          },
          backgroundColor: Colors.yellow
      ),
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
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.scanner),
//            color: Colors.red,
            iconSize: 36,
            hoverColor: Colors.blue,
            focusColor: Colors.amber,
            onPressed: (){

            },
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){

                },
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
                  elevation:10,
                  onPressed: () {
                    print('点击了');
                  },
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
                    margin: EdgeInsets.only(left:30.0,top:0.0,right:30.0,bottom:0.0),
                    child: RaisedButton(
                      child: Text('全屏按钮'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      elevation:10,
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
                  margin: EdgeInsets.only(left:30.0,top:0.0,right:30.0,bottom:0.0),
                  child: RaisedButton(
                    child: Text('带圆角的按钮'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    elevation:10,
                    onPressed: () {
                      print('点击了');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(15),
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
                  shape:
                      CircleBorder(side: BorderSide(color: Colors.white)),
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

        ]
      ),
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
        actions: <Widget>[
        ],
      ),

      body: Column(
          children: <Widget>[


          ]
      ),
    );
  }

}