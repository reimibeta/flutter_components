import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Image;

class GalleyPhotoView<T> extends StatelessWidget {

  final List<T> images;
  final Function(T) thumbnail;
  final Function onTap;
  final Function getIndex;
  final BoxFit boxFit;

  GalleyPhotoView({Key key,
    @required this.images,
    @required this.thumbnail,
    @required this.onTap,
    this.getIndex,
    this.boxFit
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return _imageWidget(images: this.images);
  }

  Widget _imageWidget({List<T> images}){
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 150.0,
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                      this.thumbnail(this.images[index]).toString()
                  ),
                  fit: boxFit ?? BoxFit.fitHeight,
                ),
              ),
            ),
            onTap: () => this.onTap(index),
          ),
        );
      },
      onPageChanged: (index){
        if(this.getIndex != null) {
          int i = index + 1;
          this.getIndex(i);
        }
      },
    );
  }
}
