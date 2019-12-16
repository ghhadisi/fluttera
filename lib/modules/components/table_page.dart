import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Table 中默认每一个 TableRow 中子 item 数量要相同，否则会报异常，
// 如果需要合并单元格的话需要自定义单元格。

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Table(
      border: new TableBorder.all(
          color: Colors.blueAccent, width: 1.0, style: BorderStyle.solid),
      children: <TableRow>[
        new TableRow(children: <Widget>[
          new Text("姓名",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 18.0)),
          new Text("地址",
              textAlign: TextAlign.center, style: new TextStyle(fontSize: 18.0))
        ]),
        new TableRow(children: <Widget>[
          new Text("唐三藏", textAlign: TextAlign.center),
          new Text("北京市海淀区", textAlign: TextAlign.center)
        ]),
        new TableRow(children: <Widget>[
          new Text("孙悟空", textAlign: TextAlign.center),
          new Text("北京市朝阳区", textAlign: TextAlign.center)
        ]),
        new TableRow(children: <Widget>[
          new Text("猪八戒", textAlign: TextAlign.center),
          new Text("北京市西城区北京市西城区北京市西城区北京市西城区", textAlign: TextAlign.center)
        ]),
        new TableRow(children: <Widget>[
          new Text("沙僧", textAlign: TextAlign.center),
          new Text("北京市东城区北京市东城区北京市东城区北京市东城区", textAlign: TextAlign.center)
        ])
      ],
    );
  }
}
