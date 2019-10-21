import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
