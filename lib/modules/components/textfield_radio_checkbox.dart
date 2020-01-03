import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
const TextField({
    Key key,
    this.controller,                    // 控制正在编辑文本
    this.focusNode,                     // 获取键盘焦点
    this.decoration = const InputDecoration(),              // 边框装饰
    TextInputType keyboardType,         // 键盘类型
    this.textInputAction,               // 键盘的操作按钮类型
    this.textCapitalization = TextCapitalization.none,      // 配置大小写键盘
    this.style,                         // 输入文本样式
    this.textAlign = TextAlign.start,   // 对齐方式
    this.textDirection,                 // 文本方向
    this.autofocus = false,             // 是否自动对焦
    this.obscureText = false,           // 是否隐藏内容，例如密码格式
    this.autocorrect = true,            // 是否自动校正
    this.maxLines = 1,                  // 最大行数
    this.maxLength,                     // 允许输入的最大长度
    this.maxLengthEnforced = true,      // 是否允许超过输入最大长度
    this.onChanged,                     // 文本内容变更时回调
    this.onEditingComplete,             // 提交内容时回调
    this.onSubmitted,                   // 用户提示完成时回调
    this.inputFormatters,               // 验证及格式
    this.enabled,                       // 是否不可点击
    this.cursorWidth = 2.0,             // 光标宽度
    this.cursorRadius,                  // 光标圆角弧度
    this.cursorColor,                   // 光标颜色
    this.keyboardAppearance,            // 键盘亮度
    this.scrollPadding = const EdgeInsets.all(20.0),        // 滚动到视图中时，填充边距
    this.enableInteractiveSelection,    // 长按是否展示【剪切/复制/粘贴菜单LengthLimitingTextInputFormatter】
    this.onTap,                         // 点击时回调
})



const InputDecoration({
    this.icon,                  // 装饰器外小图标
    this.labelText,             // 文本框描述标签
    this.labelStyle,            // 文本框描述标签样式
    this.helperText,            // 文本框辅助标签
    this.helperStyle,           // 文本框辅助标签样式
    this.hintText,              // 文本框默认提示信息
    this.hintStyle,             // 文本框默认提示信息样式
    this.hintMaxLines,          // 文本框默认提示信息最大行数
    this.errorText,             // 文本框错误提示信息
    this.errorStyle,            // 文本框错误提示信息样式
    this.errorMaxLines,         // 文本框错误提示信息最大行数
    this.hasFloatingPlaceholder = true,     // 文本框获取焦点后 labelText 是否向上浮动
    this.isDense,               // 是否问紧凑型文本框
    this.contentPadding,        // 文本内边距
    this.prefixIcon,            // 前置图标
    this.prefix,                // 前置预填充 Widget
    this.prefixText,            // 前置预填充文本
    this.prefixStyle,           // 前置预填充样式
    this.suffixIcon,            // 后置图标
    this.suffix,                // 后置预填充 Widget
    this.suffixText,            // 后置预填充文本
    this.suffixStyle,           // 后置预填充样式
    this.counter,               // 输入框右下角 Widget
    this.counterText,           // 输入框右下角文本
    this.counterStyle,          // 输入框右下角样式
    this.filled,                // 是否颜色填充文本框
    this.fillColor,             // 填充颜色
    this.errorBorder,           // errorText 存在时未获取焦点边框
    this.focusedBorder,         // 获取焦点时边框
    this.focusedErrorBorder,    // errorText 存在时获取焦点边框
    this.disabledBorder,        // 不可用时边框
    this.enabledBorder,         // 可用时边框
    this.border,                // 边框
    this.enabled = true,        // 输入框是否可用
    this.semanticCounterText,
    this.alignLabelWithHint,    // 覆盖将标签与 TextField 的中心对齐
})

const InputDecoration.collapsed({
    @required this.hintText,
    this.hasFloatingPlaceholder = true,
    this.hintStyle,
    this.filled = false,
    this.fillColor,
    this.border = InputBorder.none,
    this.enabled = true,
})

InputBorder 一般设置为无边框样式
return TextField(decoration: InputDecoration(border: InputBorder.none));


UnderlineInputBorder 一般设置为底部一条直线边框样式；小菜测试时设置边框圆角为 10dp 加上背景色效果更明显；
return TextField(decoration: InputDecoration(
    filled: true, fillColor: Colors.green.withOpacity(0.4),
    border: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.purple, width: 4.0, style: BorderStyle.solid))));

OutlineInputBorder 一般设置为包围的圆角边框；相较于 UnderlineInputBorder 多了 gapPadding 属性，用于浮动的 labelText 与边框的间距；
TextField(decoration: InputDecoration(
    labelText: '用户名：', labelStyle: TextStyle(color: Colors.purple),
    border: OutlineInputBorder(
        gapPadding: 10.0, borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.purple, width: 4.0, style: BorderStyle.solid))))


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