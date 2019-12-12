import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:photo/photo.dart';
//import 'package:photo/photo.dart';
//import 'package:photo_manager/photo_manager.dart';


//https://pub.dartlang.org/packages/photo

//https://pub.dev/packages/photo


class ImagePickerModule extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImagePickerModuleState();
  }

}

class ImagePickerModuleState extends State<ImagePickerModule>{
  File _image;

//  List<AssetEntity> _imgList;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('ImagePickerModule'),
      ),
      body: new ListView(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('ImagePicker'),
            subtitle: Text('用于从Android和iOS图像库中选择图像，并使用相机拍摄新照片。'),
            onTap: (){
              getImage();
            },
          ),

          Divider(),

          ListTile(
            contentPadding: EdgeInsets.only(left: 20),
            title: Text('photo'),
            subtitle: Text('用于选择图像，支持多选，而且这个是用Flutter做的UI，可以很方便的自定义修改（强烈推荐）'),
            onTap: (){
              getImage2(context);
            },
          ),

          _image!=null?Image.file(_image):Image.asset('assets/1.jpeg'),

//          Text('size = ${_imgList?.length}'),


        ],
      ),
    );
  }


  Future getImage() async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    var image = await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth:300.0,maxHeight:500.0,imageQuality: 90);

    setState(() {
      _image = image;
    });
  }


  Future getImage2(BuildContext context,) async {
/*
    var imgList = await PhotoPicker.pickAsset(
      context: context,
      // BuildContext requied

      /// The following are optional parameters.
      themeColor: Colors.green,
      // the title color and bottom color
      padding: 1.0,
      // item padding
      dividerColor: Colors.grey,
      // divider color
      disableColor: Colors.grey.shade300,
      // the check box disable color
      itemRadio: 0.88,
      // the content item radio
      maxSelected: 8,
      // max picker image count
      provider: I18nProvider.chinese,
      // i18n provider ,default is chinese. , you can custom I18nProvider or use ENProvider()
      rowCount: 5,
      // item row count
      textColor: Colors.white,
      // text color
      thumbSize: 150,
      // preview thumb size , default is 64
      sortDelegate: SortDelegate.common,
      // default is common ,or you make custom delegate to sort your gallery
      checkBoxBuilderDelegate: DefaultCheckBoxBuilderDelegate(
        activeColor: Colors.white,
        unselectedColor: Colors.white,
        checkColor: Colors.blue,
      ), // default is DefaultCheckBoxBuilderDelegate ,or you make custom delegate to create checkbox

//      loadingDelegate:
//      this, // if you want to build custom loading widget,extends LoadingDelegate [see example/lib/main.dart]

      badgeDelegate: const DefaultBadgeDelegate(), /// or custom class extends [BadgeDelegate]

      pickType: PickType.onlyImage, // all/image/video

//      List<AssetPathEntity> photoPathList, /// when [photoPathList] is not null , [pickType] invalid .
    );

    File firstImge;
    if (imgList !=null && imgList.length >0){
      firstImge = await imgList[0].file;
    }
    setState(() {

      if (firstImge !=null){
        _image = firstImge;

      }
    });*/
  }
}