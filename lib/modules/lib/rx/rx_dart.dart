import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

//https://github.com/ReactiveX/rxdart
class RxDartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RxData'),
      ),

      body: ListView(
        children: <Widget>[
          FlatButton(
            child: Text('fromIterable'),

            onPressed: (){
              _itemClick(context,1);
            },
          ),
          Divider(),

          RaisedButton(
            child: Text('创建Observables-----通过Future创建'),

            onPressed: (){
              _itemClick(context,2);

            },
          ),
          Divider(),

          OutlineButton(
            child: Text('创建Observables-----通过Iterable创建'),

            onPressed: (){
              _itemClick(context,3);

            },
          ),
          Divider(),
        ],
      ),
    );
  }

  void _itemClick(context,int index) {
    switch (index) {
      case 1:
        fromIterable();
        break;
      case 2:
        break;
      case 3:
        break;

    }
  }

  void fromIterable() {
    List array = [1, 2, 3, 4, 5, 6, 7];
    Observable.fromIterable(array).map<String>((data) {
      return (data + 1).toString();
    }).doOnListen(() {
      print("被监听");
    }).listen((data) {
      print(data);
    });
  }

  void PublishSubject() {
    //PublishSubject 称为StreamController。其类结构是：Object->Obserable->Subject->PublishSubject. 通过调用Stream方法得到Obserable。
    //规律: 添加数据项之前，有几个监听，那么添加之后就会执行几个
    var subject1 = new PublishSubject<int>();
    subject1.add(2);
    subject1.add(1);//数据放在监听之前，不会发出数据
    subject1.stream.listen((data) {
      print("listen1 " + data.toString());
    });
    subject1.stream.listen((data) {
      print("listen2 " + data.toString());
    });
    //输出结果:
  }

  void PublishSubject2() {
    var subject1 = new PublishSubject<int>();
    subject1.stream.listen((data) {
      print("listen1 " + data.toString());
    });
    subject1.add(1); //数据放在监听之前，不会发出数据
    subject1.stream.listen((data) {
      print("listen2 " + data.toString());
    });
    subject1.add(2);
    //输出结果:1,2,2
  }
}