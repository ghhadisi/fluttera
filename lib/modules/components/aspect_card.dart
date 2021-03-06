import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*
* https://www.imooc.com/article/289776

生命周期整体分为三个部分：初始化 / 状态改变 / 销毁；
initState 在整个生命周期中的初始化阶段只会调用一次；
didChangeDependencies 当 State 对象依赖发生变动时调用；
didUpdateWidget 当 Widget 状态发生改变时调用；实际上每次更新状态时，Flutter 会创建一个新的 Widget，并在该函数中进行新旧 Widget 对比；一般调用该方法之后会调用 build；
reassemble 只有在 debug 或 热重载 时调用；
deactivate 从 Widget Tree 中移除 State 对象时会调用，一般用在 dispose 之前；
dispose 用于 Widget 被销毁时，通常会在此方法中移除监听或清理数据等，整个生命周期只会执行一次；
resumed 应用程序可见且获取焦点状态，类似于 Android onResume()；
inactive 应用程序处于非活动状态；
paused 应用程序处于用户不可见，不响应用户状态，处于后台运行状态，类似于 Android onPause()；


* */
class AspectCardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AspectCardPageState();
  }

}


class AspectCardPageState extends State<AspectCardPage>{


  @override
  Widget build(BuildContext context) {
    print('AspectCardPage ------ didChangeDependencies');

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text('AspectCard'),
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Column(

              children: <Widget>[
                AspectRatio(
                  aspectRatio: 5.0/3.0,
                  child: Image.asset('assets/lake.png', fit: BoxFit.cover,),

                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/5.jpeg',),
                  ),
                  title: Text('hello world'),
                  subtitle: Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('AspectCardPage ------ didChangeDependencies');

  }
  @override
  void didUpdateWidget( oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('AspectCardPage ------ didUpdateWidget ${oldWidget}');

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('AspectCardPage ------ dispose');

  }


  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('AspectCardPage ------ deactivate');

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('AspectCardPage ------ initState');

  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('AspectCardPage ------ reassemble');

  }


}