import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 Text 文字换行
      Text 是我们日常一定会用到的 Widget，根据设置不同的属性产生不同的样式效果。小菜主要尝试了一下换行时的效果。

softWrap: false
只有一行内容时，若超过设置最大宽度，是否自动换行，true 为换行，false 为不换行；

overflow: TextOverflow.clip 只有一行内容，不换行时，默认截断超出内容，与设置 clip 属性效果相同；

overflow: TextOverflow.fade
只有一行内容，不换行时，将超出的文本淡化为透明；当设置多行显示时，会将最后一行底部略透明显示；

overflow: TextOverflow.ellipsis
只有一行内容，不换行时，将超出部分用 ... 代替；当设置超过多行时，最后内容以 ... 显示。但就目前小菜研究中，
无法像 Android 设置 ... 在中间或跑马灯效果，如果有哪位大神了解还请多多指教。

* */
class TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Container'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),

          ),
          // padding:EdgeInsets.all(20),

          // padding:EdgeInsets.fromLTRB(10, 30, 5, 0)
          margin: EdgeInsets.fromLTRB(10, 30, 5, 0),

          // transform:Matrix4.translationValues(100,0,0)

           transform:Matrix4.rotationZ(0.3),

          // transform:Matrix4.diagonal3Values(1.2, 1, 1)

          alignment: Alignment.bottomLeft,

          child: Text(
            '各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大地学大家好我是主讲老师大地',
            textAlign: TextAlign.justify,
            //文本对齐方式(center 居中,left 左 对齐,right 右对齐,justfy 两端对齐)
            textDirection: TextDirection.rtl,
            //文本方向(ltr 从左至右,rtl 从右至
            //左)
//              overflow: TextOverflow.ellipsis,
//          maxLines: 2,
            textScaleFactor: 1.8,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.red,
                // color:Color.fromARGB(a, r, g, b)
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.green,
//              decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 1.0),
          ),
        ),
      ),
    );
  }
}
