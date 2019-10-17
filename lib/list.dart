import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListPageState(new List<String>.generate(100, (int index){
      return index.toString();
    }));
  }

}

class ListPageState extends State<ListPage>{
  List<String> _list;


  ListPageState(this._list);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: new ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context,index){
//        return new ListTile(
//          title: Text('list  =  ${_list[index]}'),
//          subtitle: Text('index = $index'),
//        );
        var item = _list[index];
        return new Dismissible(
          // Each Dismissible must contain a Key. Keys allow Flutter to
          // uniquely identify Widgets.
          key: new Key(item),
          // We also need to provide a function that will tell our app
          // what to do after an item has been swiped away.
          onDismissed: (direction) {
            _list.removeAt(index);

            Scaffold.of(context).showSnackBar(
                new SnackBar(content: new Text("$item dismissed")));
          },
          // Show a red background as the item is swiped away
          background: new Container(color: Colors.red),
          child: new ListTile(title: new Text('$item'),
            onTap: (){

            },
          ),

        );
      }

      ),
    );
  }

}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
