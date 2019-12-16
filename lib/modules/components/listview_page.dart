import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//https://www.imooc.com/article/283933
//https://blog.csdn.net/weixin_34037515/article/details/91404608
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