import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//https://pub.dev/packages/url_launcher#-readme-tab-
class UrlLauncherPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UrlLauncherPageState();
  }

}


class _UrlLauncherPageState extends State <UrlLauncherPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('UrlLauncherPage'),
      ),

      body: ListView(
        children: <Widget>[
          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('_launchURL'),
            subtitle: Text('用于在Android和iOS上启动URL。支持网络，电话，短信和电子邮件方案'),
            onTap: (){
              _goModule(context,1);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('_launchTel'),
            subtitle: Text('用于在Android和iOS上启动URL。支持网络，电话，短信和电子邮件方案'),
            onTap: (){
              _goModule(context,2);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),


          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('_launchSms'),
            subtitle: Text('用于在Android和iOS上启动URL。支持网络，电话，短信和电子邮件方案'),
            onTap: (){
              _goModule(context,3);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),

          new ListTile(
            leading: Icon(Icons.add,size: 40,),
            title: Text('_launchMail'),
            subtitle: Text('用于在Android和iOS上启动URL。支持网络，电话，短信和电子邮件方案'),
            onTap: (){
              _goModule(context,4);
            },
            contentPadding: EdgeInsets.only(left: 20),
          ),
          Divider(),
        ],
      ),
    );
  }

  void _goModule(context,int index) {
    switch (index) {
      case 1:
        _launchURL();
        break;
      case 2:
        _launchTel();
        break;
      case 3:
        _launchSms();
        break;
      case 4:
        _launchMail();
        break;
    }
  }
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTel() async {
    const url = 'tel:+1 555 010 999';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchSms() async {
    const url = 'sms:5550101234';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchMail() async {
    const url = 'mailto:smith@example.org';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}