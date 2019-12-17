import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
const Chip({
    Key key,    this.avatar,  // 左侧图标
    @required this.label,  // 标签内容，一般是文字
    this.labelStyle,  // 标签样式
    this.labelPadding,  // 标签内边距
    this.deleteIcon,  // 删除图标，自己配置
    this.onDeleted,  // 删除方法，必须调用才会显示删除图标
    this.deleteIconColor,  // 删除图标颜色
    this.deleteButtonTooltipMessage,  // 删除图标的提示消息
    this.shape,  // 形状，主要是整个标签样式，包括圆角等
    this.clipBehavior = Clip.none,    this.backgroundColor,  // 背景颜色
    this.padding,  // 整个标签内边距
    this.materialTapTargetSize,  // 删除图标点击范围，可不处理}
)

* */
class ChipPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(title: Text('ChipPage'),),
      body: Column(
        children: <Widget>[
          Chip(
            label: Text('aaaa', style: new TextStyle(fontSize: 16.0)),
            deleteIcon: Icon(Icons.clear, color: Colors.black12),
            labelPadding: EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 0.0),
          ),
          SizedBox(height: 30,),
          Chip(
            label: Text('bbbb', style: new TextStyle(fontSize: 16.0)),
            deleteIcon: Icon(Icons.clear, color: Colors.black12),
            labelPadding: EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
            onDeleted: () {},
          ),
          SizedBox(height: 30,),
          Chip(
            label: Text('ccc', style: new TextStyle(fontSize: 16.0)),
            avatar: Icon(Icons.search),
            deleteIcon: Icon(Icons.clear, color: Colors.black12),
            labelPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            onDeleted: () {},
          ),
        ],
      ),
    );
  }

}