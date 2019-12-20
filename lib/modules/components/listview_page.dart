import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//https://www.imooc.com/article/283933
//https://blog.csdn.net/weixin_34037515/article/details/91404608



/*
设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
        scrollDirection: Axis.vertical,
        //内间距
        padding: EdgeInsets.all(10.0),
        //是否倒序显示 默认正序 false  倒序true
        reverse: false,
        //false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
        primary: true,
        //确定每一个item的高度 会让item加载更加高效
        itemExtent: 50.0,
        //内容适配
        shrinkWrap: true,
        //item 数量
        itemCount: list.length,
        //滑动类型设置
        physics: new ClampingScrollPhysics(),
         //cacheExtent  设置预加载的区域
         cacheExtent: 30.0,
        //滑动监听
//        controller ,


shrinkWrap特别推荐
child 高度会适配 item填充的内容的高度,我们非常的不希望child的高度固定，因为这样的话，如果里面的内容超出就会造成布局的溢出。
shrinkWrap多用于嵌套listView中 内容大小不确定 比如 垂直布局中 先后放入文字 listView （需要Expend包裹否则无法显示无穷大高度 但是需要确定listview高度 shrinkWrap使用内容适配不会有这样的影响）

primary
If the [primary] argument is true, the [controller] must be null.
在构造中默认是false 它的意思就是为主的意思，primary为true时，我们的controller 滑动监听就不能使用了

physics
这个属性几个滑动的选择
AlwaysScrollableScrollPhysics() 总是可以滑动
NeverScrollableScrollPhysics禁止滚动
BouncingScrollPhysics 内容超过一屏 上拉有回弹效果
ClampingScrollPhysics 包裹内容 不会有回弹

cacheExtent
这个属性的意思就是预加载的区域
设置预加载的区域 cacheExtent 强制设置为了 0.0，从而关闭了“预加载”

controller
滑动监听，我们多用于上拉加载更多，通过监听滑动的距离来执行操作。

* */
class ListViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewPageState3();
  }


}


class ListViewPageState extends State<ListViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('listview'),),
      body: ListView(
        children: <Widget>[
          new ListTile(
            leading: Icon(Icons.add),
//https://pub.dev/packages/image_carousel#-installing-tab-
            title: Text('image_carousel '),
            subtitle: Text('Flutter图像展示控件，可以左右划动切换上一张下一张图像，还结合了zoomable_image可以点击后缩放查看。支持Asset和网络图像。'),
            onTap: (){
//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.map),
            isThreeLine: false,
            dense: false,

          ),

        ],
      ),
    );
  }


}



/*
* const ListTile({
    Key key,    this.leading,              // item 前置图标
    this.title,                // item 标题
    this.subtitle,             // item 副标题
    this.trailing,             // item 后置图标
    this.isThreeLine = false,  // item 是否三行显示
    this.dense,                // item 直观感受是整体大小
    this.contentPadding,       // item 内容内边距
    this.enabled = true,    this.onTap,                // item onTap 点击事件
    this.onLongPress,          // item onLongPress 长按事件
    this.selected = false,     // item 是否选中状态})
* */



class ListViewPageState2 extends State<ListViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(title: Text('listview'),),
        body: Scrollbar(
          child: ListView.separated(
              itemBuilder: (context, itemIndex){
                return ListTile(title: Text("title ${itemIndex}") ,  subtitle: Text("subtitle ${itemIndex}"),);
              },

              separatorBuilder: (context, itemIndex){
                return Divider(color: itemIndex.isEven ? Colors.blue:Colors.red, );
              },
              itemCount: 20,
              primary: true,
              reverse: true,
          ),
        ),
    );
  }

}

class ListViewPageState3 extends State<ListViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(title: Text('listview'),),
      body: ListView(
        children: ListTile.divideTiles(tiles: _buildChild(),context: context).toList(),
      ),
    );
  }
  List<Widget> _buildChild(){
    List<Widget> list = [];
    for (int i =0; i<20;i++){
      list.add(
          ListTile(title: Text("title ${i}") ,  subtitle: Text("subtitle ${i}"),)
      );
    }
    return list;
  }
}