import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


/*
https://www.imooc.com/article/287202

* const Provider.value({
    Key key,
    @required T value,
    this.updateShouldNotify,
    this.child,
})  : dispose = null,
        super.value(key: key, value: value);


Provider.value( value: ‘’, child:)；


* */
class ProviderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),

      body: MultiProvider(
        providers: [
          Provider<String>.value(value: "bbbbbb"),
          Provider<int>.value(value: 888),

        ],
        child:ChildView(),
      ),



    );



  }

}


class ChildView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text('provide str = ${Provider.of<String>(context)}  int = ${Provider.of<int>(context)}'),
      ],
    );
  }

}