export 'src/galley_photo_view.dart';
export 'src/gallery_photo_view_wrapper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_push_transition/flutter_push_transition.dart';
import 'src/gallery_photo_view_wrapper.dart';

class FlutterGallery {

  void open<T>(BuildContext context, {@required List<T> images, @required int index, @required Function(T) view}) {
    FlutterPushTransition.push(context, goto: GalleryPhotoViewWrapper(
      view: view,
      images: images,
      // galleryItems: images,
      backgroundDecoration: const BoxDecoration(
        color: Colors.black,
      ),
      initialIndex: index,
      scrollDirection: Axis.horizontal,
    ));
  }

}

FlutterGallery flutterGallery = new FlutterGallery();