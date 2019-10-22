import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GridViewPageState3();
  }

}

List<Widget> _getListData(){
  List<Widget> list = new List();

  for (var i =0; i<20; i++){
      list.add(Container(
        color:  Colors.blue,

        alignment: Alignment.center,

        child: Text('这是第$i条数据', style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),),
      ));
  }
  return list;
}

class _GridViewPageState extends State <GridViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview'),
      ),

      body: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Text('1'),
        Text('2'),
        Text('3'),
        Text('4'),
        Text('5'),
        Text('6'),
        Text('7'),
        Text('8'),
        Text('9'),
        Text('10'),

      ],),
    );
  }

}

class _GridViewPageState2 extends State <GridViewPage>{

  List<Widget> _getListData(){
    List<Widget> list = new List();

    for (var i =0; i<20; i++){
      list.add(Container(
        color:  Colors.blue,

        alignment: Alignment.center,

        child: Text('这是第$i条数据', style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview'),
      ),

      body: GridView.count(crossAxisCount: 2,
        children:_getListData(),
      ),
    );
  }

}



class _GridViewPageState3 extends State <GridViewPage>{

  List<Widget> _getListData(){
    List<Widget> list = new List();

    for (var i =0; i<20; i++){
      list.add(Container(
        color:  Colors.blue,

        alignment: Alignment.center,

        child: Column(
          children: <Widget>[
            Image.asset('assets/${i%4+1}.jpeg'),
            SizedBox(height: 20,),
            Text(
              '这是第条$i数据',
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ],
        ),
      )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview'),
      ),

      body: GridView.count(crossAxisCount: 2,
        childAspectRatio: 1.5,
        children:_getListData(),
      ),
    );
  }

}


class _GridViewPageState4 extends State <GridViewPage>{

  Widget _getListData(context,index){

    return  Container(

        alignment: Alignment.center,

        decoration: BoxDecoration(
            border: Border.all(
                color:Color.fromRGBO(233, 233,233, 0.9),
                width: 10
            )
        ),
        child: Column(
          children: <Widget>[
            Image.asset('assets/${index%4+1}.jpeg',
            fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Text(
              '这是第条$index数据',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ],
        ),
      );


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview'),
      ),

      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        mainAxisSpacing:20, //水平子 Widget 之间间距
        crossAxisSpacing:20,//垂直子 Widget 之间间距
        crossAxisCount:2,//一行的 Widget 数量
      ),
        itemBuilder: _getListData,
      itemCount: 20,
      )
    );
  }

}