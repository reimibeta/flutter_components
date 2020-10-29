import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class ContentImage<T> extends StatelessWidget {

  final List<T> models;
  final Function(T) thumbnail;
  final Function view;
  final Text caption;

  ContentImage({Key key,
    @required this.models,
    @required this.thumbnail,
    @required this.view,
    this.caption
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          GalleyPhotoView<T>(
            thumbnail: this.thumbnail,
            images: this.models,
            onTap: (index){
              flutterGallery.open<T>(
                  context,
                  images: this.models,
                  index: index,
                  view: this.view
              );
            },
            getIndex: (index){
              print("Index: $index");
            },
            boxFit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 70,
              height: 25,
              color: Colors.black.withOpacity(0.4),
              child: Center(
                child: this.caption ?? Text(
                  "${models.length} ${models.length > 1 ? 'pics' : 'pic'}",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
