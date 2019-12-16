import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewPage extends StatefulWidget{

  var  galleryItems  = ['assets/1.jpeg','assets/2.jpeg','assets/3.jpeg','assets/4.jpeg','assets/5.jpeg',];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PhotoViewpageState2();
  }


}

class _PhotoViewpageState extends State<PhotoViewPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  PhotoView(
        imageProvider: AssetImage("assets/lake.png"),
      )
    );
  }

}

class _PhotoViewpageState2 extends State<PhotoViewPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:  PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(widget.galleryItems[index]),
              initialScale: PhotoViewComputedScale.contained * 0.8,
//              heroAttributes: HeroAttributes(tag: galleryItems[index].id),
            );
          },
          itemCount: widget.galleryItems.length,
//          loadingChild: widget.loadingChild,
//          backgroundDecoration: widget.backgroundDecoration,
//          pageController: widget.pageController,
//          onPageChanged: onPageChanged,
        )
    );
  }

}