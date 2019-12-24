import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AboutPageState();
  }



}


class _AboutPageState extends State<About> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text('about')),

      body: new ListView(
        scrollDirection: Axis.vertical,
        children: [new Image.asset('assets/1.jpeg'),
//          new CircularProgressIndicator(),
         new MyButton(),
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Maps'),
          ),
          new FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            placeholderScale: 2.0,
            image:
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1490954388598&di=caf0e759c92894df7dd44e99f3de065a&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fbaike%2Fpic%2Fitem%2Fa686c9177f3e6709a81d273e3ec79f3df9dc55d5.jpg',
          ),
        FadeInImage.assetNetwork(
            placeholder: 'images/icon_copylink.png',
            placeholderScale: 2.0,
            image: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=703702342,1604162245&fm=26&gp=0.jpg'),


          new CachedNetworkImage(
            imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1490954388598&di=caf0e759c92894df7dd44e99f3de065a&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fbaike%2Fpic%2Fitem%2Fa686c9177f3e6709a81d273e3ec79f3df9dc55d5.jpg',
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _backPage,
        child: Icon(Icons.backup),
      ),
    );
  }

  void _backPage(){
    Navigator.pop(context, true);
  }


}
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell Wraps our custom flat button Widget
    return new InkWell(
      // When the user taps the button, show a snackbar
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text('Tap'),
        ));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}