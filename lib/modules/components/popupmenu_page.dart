import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
https://www.imooc.com/article/284285



 PopupMenuItem 为单个 item 的弹出样式，默认为 48px 高，可根据需求自行定义。item 中可以自定义需要的样式，包括文字图片等一系列样式。


  Tips: 若需要处理带图标的样式时，官网提供的 Demo 是借助的 ListTile 来处理的，但是小菜测试发现图标与文字距离偏大，
  原因在于 ListTile 默认左侧图标 leading 距离不可直接调整，建议用 Row 或其他方式调整。


CheckedPopupMenuItem 是一个带有复选标记的弹出菜单项。默认高度同样是 48px，
水平布局使用 ListTile 复选标记是 Icons.done 图标，显示在 leading 位置；同时只有在状态为选中时才会显示图标。


PopupMenuDivider 是一条水平分割线，注意数组要使用父类 PopupMenuEntry，配合其他 item 样式共同使用。
PopupMenuDivider 可以调整高度，但无法调整颜色，有需要的话可以进行自定义。


     PopupMenu 默认的弹框位置都是在右上角，且会挡住标题栏，如果有需要在其他位置弹框就需要借助 showMenu，
     主要通过 position 属性定位弹框位置。
     menu 的宽高与内容相关，小菜的理解是在水平和竖直方向上会将设置的 position 位置加上 menu 宽高，
     再与屏幕匹配，超过屏幕宽高，根据 position 按照 LTRB 顺序贴近屏幕边框展示。



* */
class PopupMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('PopMenuDemo'),
        actions: <Widget>[_DividerPopMenu()],
      ),
      body: Center(
          child: RaisedButton(
              child: Text('button'),
              onPressed: () async {
                final result = await showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(100.0, 200.0, 100.0, 100.0),
                    //    position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 10.0),
                    items: <PopupMenuItem<String>>[
                      new PopupMenuItem<String>(
                          value: 'value01', child: new Text('Item One')),
                      new PopupMenuItem<String>(
                          value: 'value02', child: new Text('Item Two')),
                      new PopupMenuItem<String>(
                          value: 'value03', child: new Text('Item Three')),
                      new PopupMenuItem<String>(
                          value: 'value04', child: new Text('I am Item Four'))
                    ]);
              })),
    );
  }

  Widget _NomalPopMenu() {
    return new PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                  value: 'value01', child: new Text('Item One')),
              new PopupMenuItem<String>(
                  value: 'value02', child: new Text('Item Two')),
              new PopupMenuItem<String>(
                  value: 'value03', child: new Text('Item Three')),
              new PopupMenuItem<String>(
                  value: 'value04', child: new Text('I am Item Four')),
/*
*   Tips: 若需要处理带图标的样式时，官网提供的 Demo 是借助的 ListTile 来处理的，但是小菜测试发现图标与文字距离偏大，
  原因在于 ListTile 默认左侧图标 leading 距离不可直接调整，建议用 Row 或其他方式调整。
* */
              new PopupMenuItem<String>(
                  value: 'value05',
                  child: Row(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                        child: Icon(Icons.looks_one)),
                    Text('Item One')
                  ])),
            ],
        onSelected: (String value) {
//          setState(() {
//            _bodyStr = value;
//          });
        });
  }

/*
* CheckedPopupMenuItem 是一个带有复选标记的弹出菜单项。默认高度同样是 48px，
水平布局使用 ListTile 复选标记是 Icons.done 图标，显示在 leading 位置；同时只有在状态为选中时才会显示图标。

* */
  Widget _CheckPopMenu() {
    return new PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new CheckedPopupMenuItem<String>(
                  checked: false,
                  value: 'value01',
                  child: new Text('Item One')),
              new CheckedPopupMenuItem<String>(
                  checked: true, value: 'value02', child: new Text('Item Two')),
              new CheckedPopupMenuItem<String>(
                  checked: false,
                  value: 'value03',
                  child: new Text('Item Three')),
              new CheckedPopupMenuItem<String>(
                  checked: false,
                  value: 'value04',
                  child: new Text('I am Item Four'))
            ],
        onSelected: (String value) {
//          setState(() {
//            _bodyStr = value;
//          });
        });
  }

  /*
  PopupMenuDivider 是一条水平分割线，注意数组要使用父类 PopupMenuEntry，配合其他 item 样式共同使用。
PopupMenuDivider 可以调整高度，但无法调整颜色，有需要的话可以进行自定义。
  * */
  Widget _DividerPopMenu() {
    return new PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              new PopupMenuItem<String>(
                  value: 'value01', child: new Text('Item One')),
              new PopupMenuDivider(height: 1.0),
              new PopupMenuItem<String>(
                  value: 'value02', child: new Text('Item Two')),
              new PopupMenuDivider(height: 1.0),
              new PopupMenuItem<String>(
                  value: 'value03', child: new Text('Item Three')),
              new PopupMenuDivider(height: 1.0),
              new PopupMenuItem<String>(
                  value: 'value04', child: new Text('I am Item Four'))
            ],
        onSelected: (String value) {
//          setState(() {
//            _bodyStr = value;
//          });
        });
  }
}
