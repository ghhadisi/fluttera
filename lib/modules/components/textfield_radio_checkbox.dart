import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
*
* TextField
*maxLines 设置此参数可以把文本框改为多行文本框
* onChanged  文本框改变的时候触发的事件
* decoration
*       hintText 类似 html 中的
*       placeholderborder  配置文本框边框 OutlineInputBorder 配合使用
*       labelText lable 的名称
*       labelStyle 配置 lable 的样式
* obscureText 把文本框框改为密码框controller controller 结合 TextEditingController()可以配置表单默认显示的
*
*
*Checkbox
value true 或者 false
onChanged 改变的时候触发的事件
activeColor 选中的颜色、背景颜色
湖北众猿腾网络科技有限公司
checkColor 选中的颜色、Checkbox 里面对号的颜色
默认 Checkbox 只有【选中 true】和【未选中 false】两种状态，选中颜色为主题色；

借助 activeColor 可以调整 Checkbox 选中颜色

借助 tristate 为 true 可以有【选中 true】【未选中 false】【value null】三种状态；tristate 为 false 只能有【选中 true】【未选中 false】两种状态；

materialTapTargetSize 为目标与布局大小，默认有 padded 和 shrinkWrap 两种状态；小菜理解 padded 为谷歌设计建议尺寸 48px * 48px，
shrinkWrap 为目标尺寸缩小到谷歌设计提供的最小值，但在实际效果中差别不大。
*
*
*
*
CheckboxListTile
value true 或者 false
onChanged 改变的时候触发的事件
activeColor 选中的颜色、背景颜色
title 标题
subtitle 二级标题
secondary 配置图标或者图片
selected 选中的时候文字颜色是否跟着改变
*
*
*
* Radio
* value 单选的值
onChanged 改变时触发
activeColor 选中的颜色、背景颜色
groupValue 选择组的值

*
*
RadioListTile
value true 或者 false
onChanged 改变的时候触发的事件
activeColor 选中的颜色、背景颜色
title 标题
subtitle 二级标题
secondary 配置图标或者图片
groupValue 选择组的值
*
*
*
* 开关 Switch
*value 单选的值
* onChanged  改变时触发
* activeColor 选中的颜色、背景
*
*
* */
class TextFieldRadioCheckBoxPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextFieldRadioCheckBoxPageState();
  }

}

class TextFieldRadioCheckBoxPageState extends State<TextFieldRadioCheckBoxPage>{
  var _username=new TextEditingController();   //初始化的时候给表单赋值
  bool _select = false;
  int _groupValue=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField  Radio  CheckBox'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people),
                hintText: "请输入用户名_键盘右下角按钮-done",
            ),
            controller: _username,
            onChanged: (value){
              setState(() {
                _username.text=value;
              });
            },

              textInputAction: TextInputAction.done
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
              maxLines: 1,
// obscureText: true,
              decoration: InputDecoration(
                  prefix: Icon(Icons.people),
                  hintText: "密码框_键盘右下角按钮-go",
                  border: OutlineInputBorder()
              ),
              textInputAction: TextInputAction.go
          ),

          TextField(
              decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "用户名_键盘右下角按钮-newline"
              ),
              textInputAction: TextInputAction.newline,
          ),
          SizedBox(height: 20),
          TextField(
              obscureText: true,
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                labelText: "密码",
                // labelStyle: TextStyle()
              )

          ),
          SizedBox(height: 20),
          TextField(
              decoration:InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名_键盘右下角按钮-next"
              ),
              textInputAction: TextInputAction.next
          ),


          SizedBox(height: 20),
          TextField(
              decoration:InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名_键盘右下角按钮-search"
              ),
              textInputAction: TextInputAction.search
          ),

          SizedBox(height: 20),
          TextField(
              decoration:InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名_键盘右下角按钮-send"
              ),
              textInputAction: TextInputAction.send
          ),
          SizedBox(height: 20),
          TextField(
              decoration:InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "请输入用户名_键盘右下角按钮-join"
              ),
              textInputAction: TextInputAction.join
          ),
/*
* materialTapTargetSize 为目标与布局大小，默认有 padded 和 shrinkWrap 两种状态；小菜理解 padded 为谷歌设计建议尺寸 48px * 48px，
* shrinkWrap 为目标尺寸缩小到谷歌设计提供的最小值，但在实际效果中差别不大。
* */
          Checkbox(
            value: this._select,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (v){
              setState(() {
                this._select=v;
              });
            },
            activeColor: Colors.red,
          ),
          Divider(),
          CheckboxListTile(
              value: this._select,
              onChanged: (v){
                setState(() {
                  this._select=v;
                });
              },
              title: Text("标题"),
              subtitle:Text("这是二级标题") ,
              secondary:Icon(Icons.help)
          ),
          Divider(),
          Column(
            children: <Widget>[
              RadioListTile(
                value: 0,
                title: Text('aaaaa'),
                subtitle: Text("11111"),
                groupValue: _groupValue,
              ),

              RadioListTile(
                value: 1,
                title: Text('bbbbb'),
                subtitle: Text("22222"),
                groupValue: _groupValue,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: 0,
                onChanged: (v) {
                  setState(() {
                    this._groupValue=v;
                  });
                },
                activeColor: Colors.red,
                groupValue:_groupValue ,
              ),
              Radio(
                value: 1,
                onChanged: (v) {
                  setState(() {
                    this._groupValue=v;
                  });
                },
                activeColor: Colors.red,
                groupValue:_groupValue ,
              )

            ],
          ),

          Switch(
            value: _select,
            onChanged: (value){
              setState(() {
                _select = value;
              });
            },
          ),
        ],
      ),
    );
  }

}