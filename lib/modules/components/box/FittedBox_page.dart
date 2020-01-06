import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*

https://www.imooc.com/article/295161


class FittedBox extends SingleChildRenderObjectWidget {
  const FittedBox({
    Key key,
    this.fit = BoxFit.contain,          // 填充方式
    this.alignment = Alignment.center,  // 对齐方式
    Widget child,
  })
}
      分析源码可知，FittedBox 主要通过 fit 填充方式和 alignment 对齐方式对子 Widget 进行约束；且 fit / alignment 不可为空，对于图片的裁剪很有效；


      FittedBox 主要是通过 BoxFit 填充方式与 alignment 对齐方式共同约束子 Widget；

BoxFit.fill 通过子 Widget 拉伸或压缩填充满父 Widget；
BoxFit.contain 通过子 Widget 比例拉伸或压缩，直到宽或高一边填充父 Widget；
BoxFit.cover 以子 Widget 宽或高填充父 Widget，剩余一边若超过父 Widget 对应边则裁切；
BoxFit.fitWidth 通过子 Widget 以宽为基准填充父 Widget，若高度超出会被裁切，子 Widget 不拉伸或压缩；
BoxFit.fitHeight 通过子 Widget 以高为基准填充父 Widget，若宽度超出会被裁切，子 Widget 不拉伸或压缩；
BoxFit.none 子 Widget 不拉伸或压缩，若超出父 Widget 则被裁切；
BoxFit.scaleDown 若子 Widget 可以完全放在父 Widget 中则与 BoxFit.none 效果一致；若子 Widget 不能完全放在父 Widget 中则与 BoxFit.contain 效果一致；

*/
class FittedBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FittedBoxPageState();
  }
}

class FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent.withOpacity(0.4),
              child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/1.jpeg"))),
          Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent.withOpacity(0.4),
              child: FittedBox(
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/2.jpeg"))),
          Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent.withOpacity(0.4),
              child: FittedBox(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/3.jpeg"))),
          Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent.withOpacity(0.4),
              child: FittedBox(
                  fit: BoxFit.none,
                  alignment: Alignment.center,
                  child: Image.asset("assets/4.jpeg"))),
        ],
      ),
    );
  }
}
