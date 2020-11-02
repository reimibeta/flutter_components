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
          flex: this.titleFlex ?? 2,
          child: this.titleWidget ?? Text(
            "\t\t$title",
            style: this.titleStyle ?? TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: this.contentFlex ?? 4,
          child: this.contentWidget ?? Text(
            ":\t$content",
            style: this.contentStyle ?? TextStyle(),
          ),
        ),
      ],
    );
  }
}
