import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('buttons'),
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


        ]
      ),
    );
  }

}