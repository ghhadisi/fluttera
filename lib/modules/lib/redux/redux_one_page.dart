import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'ReduxState.dart';
import 'package:redux/redux.dart';

import 'redux_two_page.dart';
/*
https://blog.csdn.net/xcf111/article/details/90752577
https://pub.dev/packages/flutter_redux#-readme-tab-
*
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