import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GoodLoaderWidget extends StatefulWidget {

  bool cancelable;
  double elevation;
  double opacity;
  double height;
  double width;
  Animation<Color> valueColor;
  GoodLoaderWidget({Key key,
    this.cancelable,
    this.elevation,
    this.opacity,
    this.height,
    this.width,
    this.valueColor
  }):super(key: key);

  @override
  _GoodLoaderWidgetState createState() => _GoodLoaderWidgetState();
}

class _GoodLoaderWidgetState extends State<GoodLoaderWidget> {

  void _onDismiss(BuildContext context, bool cancelable){
    if(cancelable != null){
      if(cancelable){
        if(Navigator.canPop(context))
          Navigator.pop(context);
      }
    } else {
      if(Navigator.canPop(context))
        Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: this.widget.elevation ?? 0,
      child: Opacity(
        opacity: this.widget.opacity ?? 1.0,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Center(
            child: InkWell(
              child: Container(
                height: this.widget.height ?? 100,
                width: this.widget.width ?? 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: CircularProgressIndicator(
                  valueColor: this.widget.valueColor ?? AlwaysStoppedAnimation<Color>(Colors.grey.shade700),
                ),
              ),
              onTap: () => null,
            ),
          ),
          onTap: () => _onDismiss(context, this.widget.cancelable),
        ),
      ),
    );
  }
}
