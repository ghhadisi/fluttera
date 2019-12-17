import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomSheetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomSheetPageState();
  }

}
class BottomSheetPageState extends State<BottomSheetPage>{

  var _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(title: Text('BottomSheet'),),
      body: Column(
        children: <Widget>[
           RaisedButton(
             child: Text('Persistent 式工作表：类似于一个全新的页面，完全展示 ScaffoldState.showBottomSheet'),
             onPressed: (){
               print('click');
//               showBottomSheet(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return _showNomalWid(context);
//                   });


               _scaffoldkey.currentState.showBottomSheet( (BuildContext context) {
                     return _showNomalWid(context);
                   } );
             },
           ),


          SizedBox(height: 50,),


          FlatButton(
            child: Text('Modal 式工作表：是一个半透明的页面，默认占据屏幕一半 ScaffoldState.showModalBottomSheet'),
            onPressed: (){
              showModalBottomSheet(
                  context: context,

                  builder: (BuildContext context) {
                    return _showNomalWid(context);
                  });
            },
          ),
        ],
      ),
    );
  }



  Widget _showNomalWid(BuildContext context) {

    return new Container(//      height: 320.0,//      color: Colors.greenAccent,
//      height: 200,
      child: new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 5.0, childAspectRatio: 1.0),
        itemBuilder: (BuildContext context, int index) {          return new Column(
          children: <Widget>[              new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
            child: new Image.asset( 'assets/${index+1}.jpeg', width: 50.0, height: 50.0, fit: BoxFit.fill,
            ),
          ),              new Text('image${index}')
          ],
        );
        },
        itemCount: 5,
      ),
    );
  }
}