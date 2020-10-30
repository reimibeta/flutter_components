import 'package:flutter/material.dart';
import 'src/content_image.dart';

export 'src/content_image.dart';
export 'src/content_text.dart';
export 'src/content_date.dart';
export 'src/content_status.dart';

class FlutterContent<T> extends StatelessWidget {

  final ContentImage contentImage;
  final List<Widget> contentTexts;
  final EdgeInsetsGeometry contentPadding;

  FlutterContent({Key key,
    this.contentImage,
    @required this.contentTexts,
    this.contentPadding
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> contents = new List<Widget>();
    contents.add(this.contentImage ?? Container());
    for(var contentText in this.contentTexts){
      contents.add(contentText);
    }
    return Container(
      padding: this.contentPadding,
      child: SingleChildScrollView(
        child: Column(
          children: contents,
        )
      )
    );
  }
}
