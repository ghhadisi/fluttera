import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'ReduxState.dart' as rdx;
import 'package:redux/redux.dart';

/*
https://blog.csdn.net/xcf111/article/details/90752577
https://pub.dev/packages/flutter_redux#-readme-tab-


该例子里的界面构建使用的是StoreBuilder来构建，也可以使用StoreConnector来构建，两者就差一个参数。
StoreConnector主要是有个数据转化的作用，可以对数据先做一些转化操作再赋值到组件上

class StoreConnector<S, ViewModel> extends StatelessWidget

    1

StoreBuilder是直接将数据给显示在组件上

class StoreBuilder<S> extends StatelessWidget


* */
class ReduxTwoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print('build');
    // TODO: implement build
    return StoreBuilder<rdx.ReduxState>(
        builder: (BuildContext context, Store<rdx.ReduxState> store){
          return Scaffold(
            appBar: AppBar(title: Text('ReduxTwoPage'),),
            body: Center(
                child: Column(
                  children: <Widget>[
                  StoreConnector<rdx.ReduxState, String>(
                    converter: (store) => store.state.state.toString(),
                  builder: (BuildContext context, String name) {
                    return Text(name);
                  },
                ),
                SizedBox(height: 100,),

                    Text(store.state.state.toString()),
                    SizedBox(height: 100,),
                    FlatButton(
                        onPressed: (){
                          store.dispatch(rdx.Action.Increment);
                        },
                        child: Text("点击变换数据")
                    )
                  ],
                )
            ),
          );
        }
    );

  }

}