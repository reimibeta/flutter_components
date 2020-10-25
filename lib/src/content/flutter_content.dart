import 'package:flutter/material.dart';
import 'src/content_image.dart';

export 'src/content_image.dart';
export 'src/content_text.dart';


class FlutterContent<T> extends StatelessWidget {

  final ContentImage contentImage;
  final List<Widget> contentTexts;

  FlutterContent({Key key,
    this.contentImage,
    @required this.contentTexts
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> contents = new List<Widget>();
    contents.add(this.contentImage ?? Container());
    for(var contentText in this.contentTexts){
      contents.add(contentText);
    }
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: contents,
        )
      )
    );
  }
}
