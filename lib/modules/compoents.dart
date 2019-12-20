import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/modules/components/gridview.dart';
import 'package:fluttera/modules/components/listview_page.dart';

import 'components/appbar_page.dart';
import 'components/aspect_card.dart';
import 'components/bottom_nav_bar.dart';
import 'components/button_inkview.dart';
import 'components/chip_page.dart';
import 'components/bottomsheet_page.dart';
import 'components/default_textstyle_page.dart';
import 'components/dialog_page.dart';
import 'components/drawer.dart';
import 'components/expand.dart';
import 'components/expansiontile_page.dart';
import 'components/image.dart';
import 'components/linear_gradient_page.dart';
import 'components/popupmenu_page.dart';
import 'components/scroll_listgrid_page.dart';
import 'components/spacer_page.dart';
import 'components/stack.dart';
import 'components/statusbar_safearea_page.dart';
import 'components/tabbar.dart';
import 'components/table_page.dart';
import 'components/text_container.dart';
import 'components/textfield_radio_checkbox.dart';
import 'components/visibility_page.dart';
import 'components/wrap.dart';


class Componets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('compents'),

      ),
      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('Text and Container'),
            onTap: (){
              _goModule(context,1);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('image'),
            onTap: (){
              _goModule(context,2);

            },
            contentPadding: EdgeInsets.only(left: 20),
            trailing: Icon(Icons.call),
          ),
          new ListTile(
            title: Text('gridview'),
            onTap: (){
              _goModule(context,3);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('expand'),
            onTap: (){
              _goModule(context,4);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('stack'),
            onTap: (){
              _goModule(context,5);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('aspectradio card'),
            onTap: (){
              _goModule(context,6);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          new ListTile(
            title: Text('wrap'),
            onTap: (){
              _goModule(context,7);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('BottomNavBarPage'),
            onTap: (){
              _goModule(context,8);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('TabBarPage'),
            onTap: (){
              _goModule(context,9);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('drawer'),
            onTap: (){
              _goModule(context,10);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          new ListTile(
            title: Text('buttons'),
            onTap: (){
              _goModule(context,11);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          new ListTile(
            title: Text('TextField  Radio  CheckBox'),
            onTap: (){
              _goModule(context,12);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('Listview'),
            onTap: (){
              _goModule(context,13);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
          new ListTile(
            title: Text('Table 表格布局'),
            onTap: (){
              _goModule(context,14);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          new ListTile(
            title: Text('bottomsheet'),
            onTap: (){
              _goModule(context,15);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('Visibility'),
            onTap: (){
              _goModule(context,16);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('Chip'),
            onTap: (){
              _goModule(context,17);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('PopupMenu'),
            onTap: (){
              _goModule(context,18);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('DialogPage'),
            onTap: (){
              _goModule(context,19);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('LinearGradient'),
            onTap: (){
              _goModule(context,20);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          new ListTile(
            title: Text('AppBar'),
            onTap: (){
              _goModule(context,21);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('Statusbar'),
            onTap: (){
              _goModule(context,22);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('DefaultTextStyle'),
            subtitle: Text('在当前页面中设置统一的 DefaultTextStyle 默认文本样式'),
            onTap: (){
              _goModule(context,23);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('ExpansionTile'),
            subtitle: Text('一个可向下扩展空间的 Widget'),
            onTap: (){
              _goModule(context,24);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),


          Divider(),
          new ListTile(
            title: Text('Spacer'),
            subtitle: Text('Spacer 小菜的理解是占位组件，创建一个可调节的空间隔，可用于调整 Flex 容器（如行或列）中窗口小部件之间的间距；默认 flex: 1。'),
            onTap: (){
              _goModule(context,25);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),

          Divider(),
          new ListTile(
            title: Text('Scroll 嵌套Gridview Listview'),
            subtitle: Text('Page 页面同时用到 GridView 和 ListView 或多个 ListView，此时就会遇到常见的滑动冲突问题'),
            onTap: (){
              _goModule(context,26);

            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
        ],
      ),
    );
  }


  void _goModule(context,int index){

    switch(index){
      case 1:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TextContainer();
        }));
        break;
      case 2:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ImagePage();
        }));
        break;
      case 3:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return GridViewPage();
        }));
        break;
      case 4:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ExpandPage();
        }));
        break;
      case 5:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return StackPage();
        }));
        break;
      case 6:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return AspectCardPage();
        }));
        break;
      case 7:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return WrapPage();
        }));
        break;
      case 8:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return BottomNavBarPage();
        }));
        break;

      case 9:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TabBarPage();
        }));
        break;

      case 10:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return DrawerPage();
        }));
        break;
      case 11:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ButtonsPage();
        }));
        break;
      case 12:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TextFieldRadioCheckBoxPage();
        }));
        break;
      case 13:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ListViewPage();
        }));
        break;
      case 14:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return TablePage();
        }));
        break;
      case 15:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return BottomSheetPage();
        }));
        break;
      case 16:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return VisibilityPage();
        }));
        break;
      case 17:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return ChipPage();
        }));
        break;

      case 18:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return PopupMenuPage();
        }));
        break;

      case 19:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return DialogPage();
        }));
        break;
      case 20:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  LinearGradientPage();
        }));
        break;

      case 21:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  AppBarPage();
        }));
        break;
      case 22:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  StatubarPage();
        }));
        break;
      case 23:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  DefaultTextStylePage();
        }));
        break;
      case 24:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  ExpansionTilePage();
        }));
        break;
      case 25:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  SpacerPage();
        }));
        break;
      case 26:
        Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context){
          return  ScrollGridListPage();
        }));
        break;
    }
  }
}