import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
gridDelegate：构造 GridView 的委托者，GridView.count 就相当于指定 gridDelegate 为 SliverGridDelegateWithFixedCrossAxisCount，GridView.extent 就相当于指定 gridDelegate 为 SliverGridDelegateWithMaxCrossAxisExtent，它们相当于对普通构造方法的一种封装。它的值是一个 SliverGridDelegate 对象，参考 2.1 SliverGridDelegate。

cacheExtent：同 ListView，预加载的区域。

controller：同 ListView，滑动监听，值为一个 ScrollController 对象，这个属性应该可以用来做下拉刷新和上垃加载，后面详细研究。

padding：同 ListView，整个 GridView 的内间距。

physics：同 ListView，设置 GridView 如何响应用户的滑动行为，值为一个 ScrollPhysics 对象，它的实现类常用的有：
    AlwaysScrollableScrollPhysics：总是可以滑动。
    NeverScrollableScrollPhysics：禁止滚动。
    BouncingScrollPhysics：内容超过一屏，上拉有回弹效果。
    ClampingScrollPhysics：包裹内容，不会有回弹，感觉跟 AlwaysScrollableScrollPhysics 差不多。

reverse：Item 的顺序是否反转，若为 true 则反转，这个翻转只是行翻转，即第一行变成最后一行，但是每一行中的子组件还是从左往右摆放的，用到该属性的开发情景较少。

scrollDirection：GirdView 的方向，为 Axis.vertical 表示纵向，为 Axis.horizontal 表示横向，横向的话 CrossAxis 和 MainAxis 表示的轴也会调换，为 Axis.Horizontal 的情况也较少。

primary：是否是与父节点的PrimaryScrollController所关联的主滚动视图。


shrinkWrap：滚动方向的滚动视图内容是否应该由正在查看的内容所决定。



2.1 SliverGridDelegate
构造 GridView 的委托者，它有两个实现类：

2.1.1 SliverGridDelegateWithFixedCrossAxisCount
该委托者通常用于每一行的子组件个数固定的情况，它可以指定如下几个属性：

crossAxisCount：必传参数，Cross 轴（在 GridView 中通常是横轴，即每一行）子组件个数。

childAspectRatio：子组件宽高比，如 2 表示宽：高=2:1,如 0.5 表示宽：高=0.5:1=1:2，简单来说就是值大于 1 就会宽大于高，小于 1 就会宽小于高。

crossAxisSpacing：Cross 轴子组件的间隔，一行中第一个子组件左边不会添加间隔，最后一个子组件右边不会添加间隔，这一点很棒。

mainAxisSpacing：Main 轴（在 GridView 中通常是纵轴，即每一列）子组件间隔，也就是每一行之间的间隔，同样第一行的上边和最后一行的下边不会添加间隔。

 

2.1.2 SliverGridDelegateWithMaxCrossAxisExtent
maxCrossAxisExtent：必传参数，Cross 轴（在 GridView 中通常是横轴，即每一行）子组件最大宽度，会根据该值来决定一行摆放几个子组件。

其余属性 childAspectRatio、crossAxisSpacing、mainAxisSpacing 同 SliverGridDelegateWithFixedCrossAxisCount。

* */
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