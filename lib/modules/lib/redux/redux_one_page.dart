import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'ReduxState.dart';
import 'package:redux/redux.dart';

import 'redux_two_page.dart';
/*
https://blog.csdn.net/xcf111/article/details/90752577
https://pub.dev/packages/flutter_redux#-readme-tab-


如上图，Redux 的主要由三部分组成:Store 、Action 、 Reducer 。

  Action 用于定义一个数据变化的请求行为。
  Reducer 用于根据 Action 产生新状态，一般是一个方法。
  Store 用于存储和管理 state。


所以一般流程为:
1、Widget 绑定了 Store 中的 state 数据。
2、Widget 通过 Action 发布一个动作。
3、Reducer 根据 Action 更新 state。
4、更新 Store 中 state 绑定的 Widget。

根据这个流程，首先我们要创建一个 Store 。如下图，创建 Store 需要 际上是一个带有 state 和 action 的方法，并返回新的 State 。

* */
class ReduxOnePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store){
          return Scaffold(
            appBar: AppBar(
              title: Text("ReduxDemo3"),
            ),
            body: Center(
                child: Column(
                  children: <Widget>[
                    Text(store.state.state.toString()),
                    SizedBox(height: 100,),
                    FlatButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return ReduxTwoPage();
                          }));
                        },
                        child: Text("下一页")
                    )
                  ],
                )
            ),
          );
        }
    );


  }

}