import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// ignore: must_be_immutable
class GoodAlertWidget extends StatefulWidget {

  String message;
  bool cancelable;
  double elevation;
  double opacity;
  double height;
  double width;

  GoodAlertWidget({Key key,
    this.message,
    this.cancelable,
    this.elevation,
    this.opacity,
    this.height,
    this.width,
  }):super(key: key);

  @override
  _GoodAlertWidgetState createState() => _GoodAlertWidgetState();
}

class _GoodAlertWidgetState extends State<GoodAlertWidget> {

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
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: this.widget.height ?? 100,
                width: this.widget.width ?? MediaQuery.of(context).size.width - 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this.widget.message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 18
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 5),),
                    Icon(Icons.error_outline, color: Colors.grey.shade700,)
                  ],
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
