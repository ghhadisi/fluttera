import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


//https://github.com/ReactiveX/rxdart
//https://blog.csdn.net/jielundewode/article/details/94381616
//https://pub.dev/documentation/rxdart/latest/

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

          Text('create', style: TextStyle(color: Colors.green, fontSize: 24),textAlign: TextAlign.center,),
          FlatButton(
            child: Text('fromIterable'),

            onPressed: (){
              _itemClick(context,1);
            },
          ),
          Divider(),

          RaisedButton(
            child: Text('从一个Stream中创建'),

            onPressed: (){
              _itemClick(context,2);

            },
          ),
          Divider(),

          OutlineButton(
            child: Text('通过Future创建：fromFuture'),

            onPressed: (){
              _itemClick(context,3);

            },
          ),
          Divider(),

          FlatButton(
            child: Text('从单个值中创建'),

            onPressed: (){
              _itemClick(context,4);
            },
          ),
          Divider(),


          Text('Subjects', style: TextStyle(color: Colors.yellow, fontSize: 24),textAlign: TextAlign.center,),
/*
* Subjects是RxDart的流控制器（StreamController），但Subjects但行为跟StreamControllers还是有些区别的：
    你可以在一个Subject上直接listen()，而不需要拥有对这个Stream的访问权限；
    你可以添加多个subscription，它们会同时收到同样的数据；
* */
          RaisedButton(
            child: Text('PublishSubjects'),
//  和StreamControllers的行为很像，也支持多个监听，默认是sync是false，
// 也就是说里面是一个AsyncBroadcastStreamController 异步广播流：
            onPressed: (){
              _itemClick(context,5);

            },
          ),
          Divider(),
          //每一个新加的监听，接收到的第一个数据都是上一个数据（再往前的数据不会监听到，只会缓存一个数据
          OutlineButton(
            child: Text('BehaviourSubject'),

            onPressed: (){
              _itemClick(context,6);

            },
          ),
          Divider(),

          ListTile(
            title: Text('BehaviourSubject 单条数据而言，总是后加的监听先接收到'),
            subtitle: Text('也可以添加默认接收数据的值seeded：'),
            onTap: (){
              _itemClick(context,7);
            },
          ),
          Divider(),


          //每一个新加的监听，接收到的第一个数据都是上一个数据（再往前的数据不会监听到，只会缓存一个数据
          OutlineButton(
            child: Text('ReplaySubject 缓存更多的数据'),

            onPressed: (){
              _itemClick(context,8);

            },
          ),
          Divider(),
          Text('map', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),

          ListTile(
            title: Text('period', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('重复性操作' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,9);
            },
          ),
          Divider(),
          ListTile(
            title: Text('interval', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('重复性操作' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,10);
            },
          ),
          Divider(),
          ListTile(
            title: Text('timer', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('延时操作' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,11);
            },
          ),
          Divider(),
          Text('contact', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
          ListTile(
            title: Text('Where：数据过滤', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('如果你只关心Stream中的特定数据，那么可以使用.where()函数。这个函数其实就是替代if语句的，但是.where()会更加方便阅读：' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,12);
            },
          ),
          Divider(),
          Text('Debounce', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
          Text('throttleWithTimeOut', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
          ListTile(
            title: Text('Expand：展开数组', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('乍一看和map差不多，但它更加强大，可以添加元素，修改元素' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,13);
            },
          ),
          Divider(),

          Text('mergeWith', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
          Text('Distinct：过滤相同数据', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
          Text('ZipWith：数据合并\n zipWith也是将一个Stream和另一个合并到一起，但是它和.mergeWith不一样。.mergeWith只要拿到了数据就立刻发射出去，但是zipWith会等到所有数据都接收完毕后，将这些数据重组后再发射出去。', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
        //zipWith也是将一个Stream和另一个合并到一起，但是它和.mergeWith不一样。.mergeWith只要拿到了数据就立刻发射出去，
          // 但是zipWith会等到所有数据都接收完毕后，将这些数据重组后再发射出去。与RxJava一致，不再赘述。

          Text('CombineLatest：组合数据', style: TextStyle(color: Colors.lime, fontSize: 24),textAlign: TextAlign.center,),
          Divider(),
//combineLatest跟merge和zip一样也是组合数据，但是有一些轻微都区别。它接收到一个Stream的数据后，不仅仅会发射这个Stream带来的数据，
// 还会将其他Stream中的最近的数据也发射出去。也就是说，有n个Stream，它每一次就发射n个数据，发射的数据是每个Stream上最近的一条数据；
// 任意一个Stream的数据进来的时候，都会触发一次发射；刚开始的时候，数据种类不足n时，会等待（也就是第一次发射必须保证每个Stream都有数据被传递过来），与RxJava一致。
          ListTile(
            title: Text('检查每一个item：every', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('every会检查每个item是否符合要求，然后它将会返回一个能够被转化为 Observable 的 AsObservableFuture。' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,14);
            },
          ),
          Divider(),

          ListTile(
            title: Text('AsyncMap：异步数据转换', style: TextStyle(color: Colors.red, fontSize: 24),),
            subtitle: Text('让你可以在map函数中进行异步操作' ,style: TextStyle(color: Colors.blue, fontSize: 20),),
            onTap: (){
              _itemClick(context,15);
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
      case 2://'从一个Stream中创建
        fromStream();
        break;
      case 3://通过Future创建：fromFuture
        fromFuture();
        break;
      case 4://从单个值中创建 just
        fromJust();
        break;

      case 5:
        publishSubject();
        break;
      case 6:
        behaviourSubject1();
        break;
      case 7:
        behaviourSubject2();

        break;
      case 8:
        replaySubject();
        break;
      case 9:
        periodTest();
        break;
      case 10:
        intervalTest();
        break;
      case 11:
        timerTest();
        break;
      case 12:
        whereTest();
        break;
      case 13:
        expandTest();
        break;
      case 14:
        everyTest();
        break;
      case 15:
         asyncMapTest();
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

  void fromStream(){
    var controller = new StreamController<String>();
    var streamObservable = new Observable(controller.stream);
    streamObservable.listen(print);
    controller.add('aaa');
  }

  void fromFuture(){
    var obs = Observable.fromFuture(new Future.value("Hello"));
    obs.listen(print);
  }


  void fromJust(){
    var justObservable = Observable<int>.just(42);
    justObservable.listen(print);
  }
  void publishSubject() {
    //PublishSubject 称为StreamController。其类结构是：Object->Obserable->Subject->PublishSubject. 通过调用Stream方法得到Obserable。
    //规律: 添加数据项之前，有几个监听，那么添加之后就会执行几个
    var subject1 = new PublishSubject<int>();
    subject1.add(2);
    subject1.add(1);//数据放在监听之前，不会发出数据
    subject1.listen((data) {
      print("listen1 " + data.toString());
    });

    subject1.stream.listen((data) {
      print("listen2 " + data.toString());
    });
    subject1.add(3);
    //输出结果:
    // 这句话只是为了防止在数据处理完毕之前，进程就被杀死了
//    await Future.delayed(Duration(seconds: 5));

// 取消所有的Subscriptions
//    subject1.close;
  }

  /*
  * 我们发现第二个subscriber没有监听到Item1，但是监听到了Item2，**
  * 而且第二个subscriber比第一个subscriber先监听到了Item3。**这是因为，
  * 你没法决定多个监听的服务顺序（实际上对于单个item，总是后加的监听先接收到数据），
  * 但是每个监听获取到的数据依然是有序的。BehaviourSubject只会为后加的Subscribers缓存最近的一条输出数据。
总结:每一个新加的监听接收到的第一条数据，是最近的那条数据（也就是只会缓存最近一条数据的意思）；
* 对于单条数据而言，总是后加的监听先接收到。
也可以添加默认接收数据的值seeded：
  * */
  void behaviourSubject1() {
    var subject = new BehaviorSubject<String>();
    subject.listen((item) => print(item));

    subject.add("Item1");
    subject.add("Item2");

    subject.listen((item) => print(item.toUpperCase()));

    subject.add("Item3");
    subject.close();
  }

  void behaviourSubject2() {
    //也可以添加默认接收数据的值seeded：
    var subject = new BehaviorSubject<String>.seeded("hello");
    subject.stream.listen((item) => print(item));

    subject.add("Item1");
    subject.add("Item2");

    subject.listen((item) => print(item.toUpperCase()));

    subject.add("Item3");
    subject.close();
  }

  void replaySubject(){
    final subject1 = ReplaySubject<int>();

    subject1.add(1);
    subject1.add(2);
    subject1.add(3);

    subject1.stream.listen(print); // prints 1, 2, 3
    subject1.stream.listen(print); // prints 1, 2, 3
    subject1.stream.listen(print); // prints 1, 2, 3

    final subject2 = ReplaySubject<int>(maxSize: 2);

    subject2.add(1);
    subject2.add(2);
    subject2.add(3);

    subject2.stream.listen(print); // prints 2, 3
    subject2.stream.listen(print); // prints 2, 3
    subject2.stream.listen(print); // prints 2, 3
  }

  void periodTest(){
    StreamSubscription subs;
    subs = Observable.periodic(Duration(seconds: 2), (index) {
      return "primitive $index";
    }).map((value) => "ss $value").listen((data) {
      print("data is $data");
      if (data.contains("8")) {
        subs.cancel();
      }
    });
  }

  void intervalTest(){
    var obs = Observable(Stream.fromIterable([1,2,3,4,5]))
        .interval(new Duration(seconds: 1));

    obs.listen(print);
  }

  void timerTest(){
    Observable.timer("Hello Timer", Duration(seconds: 5)).listen((data) {
      print("data is $data");
    });
  }


  void  whereTest(){
    var subject = new PublishSubject<int>();

    subject.where((val) => val.isOdd)
        .listen((val) => print('This only prints odd numbers: $val'));

    subject.where((val) => val.isEven)
        .listen((val) => print('This only prints even numbers: $val'));

    subject.add(1);
    subject.add(2);
    subject.add(3);
    subject.close();
  }

// 乍一看和map差不多，但它更加强大，可以添加元素，修改元素。
  void expandTest(){
    var list = [1, 8, 9, 20, 36, 68, 99];
    var subject = Observable.fromIterable(list);
    subject.expand((data) {
      //对应也可以是[data,"number is $data"]表示添加元素
      return ["number is $data"];
    }).listen((data) {
      print(data);
    });
  }

  //every会检查每个item是否符合要求，然后它将会返回一个能够被转化为 Observable 的 AsObservableFuture。
  void everyTest(){
    var obs = Observable.fromIterable([1,2,3,4,5]);
    obs.every((x)=> x < 10).asObservable().listen(print);
  }

  //让你可以在map函数中进行异步操作。
  void asyncMapTest(){
//    Observable<CombinedMessage> getDependendMessages() {
//
//      Observable<NewsMessage> news = newsCollection.snapshots().expand((snapShot) {
//        return snapShot.documents;
//      }).map<NewsMessage>((document) {
//        return NewsMessage.fromMap(document.data);
//      });
//
//      return news.asyncMap((newsEntry) async {
//        var weatherDocuments =
//        await weatherCollection.where('location', isEqualTo: newsEntry.location).getDocuments();
//        return new CombinedMessage(
//            WeatherForecast.fromMap(weatherDocuments.documents.first.data), newsEntry);
//      });
//    }
  }
}