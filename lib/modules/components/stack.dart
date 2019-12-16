import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StackPageState4();
  }

}

class StackPageState extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Image.asset('assets/1.jpeg',
          fit: BoxFit.fill,),

          Text('hello',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ],
      ),
    );
  }

}

class StackPageState2 extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(
        alignment: Alignment(0,1),
        children: <Widget>[
          Image.asset('assets/1.jpeg',
            fit: BoxFit.fill,),

          Text('hello',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ],
      ),
    );
  }

}

class StackPageState3 extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
      ),
      body: Stack(

        children: <Widget>[
          Image.asset('assets/1.jpeg',
            fit: BoxFit.cover,

          width: 800,
          height: 1200,),

          Align(
              alignment: Alignment.topLeft,
              child: Text('hello',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),

            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Text('world',style: TextStyle(
              color: Colors.green,
              fontSize: 20,
            ),

            ),
          ),
        ],
      ),
    );
  }


}

//多了一个 index 熟悉，根据 index 显示具体的层级。小菜觉得在处理显隐性方面会起到很大作用。
//index 默认为 0，即如果不处理 index 属性值时默认展示第一层 Stack；
//index 从下标从 0 开始，层数递增，如果超过最大层数或为负数时，全部不显示。
class StackPageState4 extends State<StackPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new IndexedStack(
      index: 2, // 代表第二层
      children: <Widget>[      new Column(
        children: <Widget>[ new Icon(Icons.looks_one, color: Colors.blueAccent), new Text("第一页") ],
      ),      new Column(
        children: <Widget>[ new Icon( Icons.looks_two, color: Colors.greenAccent ), new Text("第二页") ],
      ),      new Column(
        children: <Widget>[ new Icon(Icons.looks_3, color: Colors.redAccent), new Text("第三页") ],
      ),      new Column(
        children: <Widget>[ new Icon(Icons.looks_4, color: Colors.yellowAccent), new Text("第四页") ],
      )
      ],
      alignment: Alignment.center,
    );

  }

}