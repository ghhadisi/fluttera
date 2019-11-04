import 'package:flutter/material.dart';
import 'package:fluttera/list.dart';
import 'package:fluttera/modules.dart';
import 'package:fluttera/modules/navgation/HomePage.dart';

import 'about.dart';
import 'modules/compoents.dart';

//void main() => runApp(MyApp());

void main() => runApp(Modules());

//void main() => runApp(HomePage());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new MyHomePage(),
//      home: new Signature(),
    routes: <String, WidgetBuilder>{
        '/about':(BuildContext context)=>About(),
    },

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState extends State<MyHomePage> {



  int _counter = 0;
  final TextEditingController _textEditingController = new TextEditingController();
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void dispose() {
    super.dispose();
//    _textEditingController.removeListener(listener)
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            _buildImage(),
            new Image.asset('assets/lake.png'),
            _buildtitle(),
            _buildContent(),
            new TextField(
              decoration: new InputDecoration(hintText: "This is a hint", errorText: 'content err '),
              controller: _textEditingController,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            _buildBottom(),
//            new Container(
//              constraints: new BoxConstraints.expand(
//                height:
//                    Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//              ),
//              padding: const EdgeInsets.all(8.0),
//              color: Colors.teal.shade700,
//              alignment: Alignment.center,
//              child: new Text('Hello World',
//                  style: Theme.of(context)
//                      .textTheme
//                      .display1
//                      .copyWith(color: Colors.white)),
//              foregroundDecoration: new BoxDecoration(
//                image: new DecorationImage(
//                  image: new NetworkImage(
//                      'https://www.example.com/images/frame.png'),
//                  centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//                ),
//              ),
//              transform: new Matrix4.rotationZ(0.1),
//            ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _buildtitle() {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                'Kandersteg, Switzerland',
                textDirection: TextDirection.rtl,
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
    return titleSection;
  }

  Widget _buildBottom(){
    Widget buttonSection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "CALL"),
          buildButtonColumn(Icons.near_me, "ROUTE"),
          buildButtonColumn(Icons.share, "SHARE"),

        ],
      ),
    );
    return buttonSection;
  }

  Column buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(icon, color: color,),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
              color: color
            ),
          ),
        )
      ],
    );
  }


  Widget _buildContent(){
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',softWrap: true,
      ),
    );
    return textSection;
  }

  Widget _buildImage(){
    Widget headImage = new ListView(
      children: <Widget>[
        new Image.asset(
          'assets/lake.png',
//          height: 240.0,
//          fit: BoxFit.cover,
        )
      ],
    );
    return headImage;
  }
}

class _MyHomePageState2 extends State<MyHomePage> {

  bool _result =false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      body: _form2(),
      floatingActionButton: FloatingActionButton(
        child: _result ? Icon(Icons.map):Icon(Icons.call),
        onPressed: (){
//          Navigator.pushNamed(context, '/about');

          Navigator.push<bool>(context, new MaterialPageRoute(builder: (BuildContext context){
            return  About();
          })).then((bool value){
            setState(() {
              if (value ==null){
                _result = false;
              }else {
                _result = value;

              }

            });
          });

          Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
            return  ListPage();
          }));
        },
      ),
    );
  }


  Widget _tab(){
    var descTextStyle = new TextStyle(color: Colors.black,
        fontWeight: FontWeight.w800,fontFamily: 'Roboto', letterSpacing: 0.5, fontSize: 18.0,height: 2.0);
    // DefaultTextStyle.merge可以允许您创建一个默认的文本样式，该样式会被其所有的子节点继承
    var iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Icon(Icons.kitchen, color: Colors.green[500]),
                new Text('PREP:'),
                new Text('25 min'),
              ],
            ),
            new Column(
              children: <Widget>[
                new Icon(Icons.timer, color: Colors.green[500]),
                new Text('COOK:'),
                new Text('1 hr'),
              ],
            ),
            new Column(
              children: <Widget>[
                new Icon(Icons.restaurant, color: Colors.green[500]),
                new Text('FEEDS:'),
                new Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
    return iconList;
  }

  Widget _ContainerDemo(){
    var container = new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),

      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10,color:Colors.black38 ),
                  borderRadius: 
                    const BorderRadius.all(Radius.circular(8.0)),
                ),
                margin: EdgeInsets.all(4.0),
                child: new Image.asset('assets/1.jpeg'),
              )),
              new Expanded(child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10.0, color: Colors.black38),
                  borderRadius: new BorderRadius.all(Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset('assets/2.jpeg'),
              )),

            ],
          ),
        ],
      ),
    );
    return container;
  }

  Widget _buildGrid() {
    return new GridView.extent(maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(50),
    );
  }

  final _formKey = GlobalKey<FormState>();
  Widget _form2() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }


  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(count, (int index)=>(new Container(
      child: new Image.asset('assets/${index%5+1}.jpeg'),
    )));
  }

  Widget _buildListView() {
      return new ListView(
        children: _buildListItem(),
      );
  }
  List<Widget> _buildListItem(){
    return  <Widget>[
      new ListTile(
        title: new Text('CineArts at the Empire',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: new Text('85 W Portal Ave'),
        leading: new Icon(
          Icons.theaters,
          color: Colors.blue[500],
        ),
      ),
      new ListTile(
        title: new Text('The Castro Theater',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: new Text('429 Castro St'),
        leading: new Icon(
          Icons.theaters,
          color: Colors.blue[500],
        ),
      ),
    ];
  }

  Widget _buildStack() {
    var stack = new Stack(
      alignment: Alignment(0.6,0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('assets/1.jpeg'),
          radius: 100.0,
        ),

        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),

          child: new Text('Mia B',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    return stack;
  }


  Widget _buildCard() {
    var card = new SizedBox(
      height: 210,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text('1625 Main Street',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              subtitle: new Text('My City, CA 99984'),
              leading: new Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text('(408) 555-1212',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              leading: new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            new ListTile(
              title: new Text('costa@example.com'),
              leading: new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
    return card;
  }
}


class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);
  final List<Offset> points;
  void paint(Canvas canvas, Size size) {
    var paint = new Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1], paint);
    }
  }
  bool shouldRepaint(SignaturePainter other) => other.points != points;
}
class Signature extends StatefulWidget {
  SignatureState createState() => new SignatureState();
}
class SignatureState extends State<Signature> {
  List<Offset> _points = <Offset>[];
  Widget build(BuildContext context) {
    return new GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          RenderBox referenceBox = context.findRenderObject();
          Offset localPosition =
          referenceBox.globalToLocal(details.globalPosition);
          _points = new List.from(_points)..add(localPosition);
        });
      },
      onPanEnd: (DragEndDetails details) => _points.add(null),
      child: new CustomPaint(painter: new SignaturePainter(_points)),
    );
  }
}