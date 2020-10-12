import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {

  final String title;
  final String content;
  final int titleFlex;
  final int contentFlex;
  final TextStyle titleStyle;
  final TextStyle contentStyle;
  final Widget titleWidget;
  final Widget contentWidget;
  ContentText({Key key,
    this.title,
    this.content,
    this.titleFlex,
    this.contentFlex,
    this.titleStyle,
    this.contentStyle,
    this.titleWidget,
    this.contentWidget
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: this.titleFlex ?? 1,
          child: this.titleWidget ?? Text(
            "$title",
            style: this.titleStyle ?? TextStyle(),
          ),
        ),
        Expanded(
          flex: this.contentFlex ?? 4,
          child: this.contentWidget ?? Text(
            content,
            style: this.contentStyle ?? TextStyle(),
          ),
        ),
      ],
    );
  }
}
