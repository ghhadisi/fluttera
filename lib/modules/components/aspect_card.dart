import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

}