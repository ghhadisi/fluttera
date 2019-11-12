
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msg_engine/flutter_msg_engine.dart';
//https://github.com/yangyxd/flutter_msg_engine/blob/master/example/lib/main.dart
class MsgEnginePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MsgEnginePageState();
  }

}

class _MsgEnginePageState extends State <MsgEnginePage> implements MsgProcHandler<String>{


  String _msg;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MsgEnginePage'),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(

            title: Text('sendmsg'),
            onTap: (){
              MsgEngine.instance.sendMsg(const MsgTextBase(msgId: 100, text: "message 100."));
              MsgEngine.instance.sendMsgSync(const MsgTextBase(msgId: 100, text: "message  sync 100."));


//              Navigator.push(context,new MaterialPageRoute(builder: ( context){
//                return HttpModule();
//              }));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),


          new ListTile(

            title: Text('sendMsg 200 '),
            onTap: (){
              MsgEngine.instance.sendMsg(const MsgTextBase(msgId: 200, text: "message 200."));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(

            title: Text('MsgPackData 200 '),
            onTap: (){
              MsgEngine.instance.sendMsg(const MsgPackData<String>(msgId: 200, data: "MsgPackData 200."));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),


          new ListTile(

            title: Text('首页 150 '),
            onTap: (){
              MsgEngine.instance.sendMsg(MsgTextBase(msgId: 150, text: "message 150."));
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
          Text('${_msg==null? '空消息': _msg}')
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MsgEngine.instance.register(this, 100);

    MsgEngine.instance.regMsg(200, (MsgPack msg) {
      print(msg.toString());
      setState(() {
        _msg = msg.data;

      });
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    MsgEngine.instance.unRegister(100);
  }

  @override
  void processMsg(MsgPack<String> msg) {
    // TODO: implement processMsg
    setState(() {
      print(msg);
      _msg = msg.data;
    });
  }


}