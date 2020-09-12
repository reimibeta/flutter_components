library flutter_good_alert;

import 'package:flutter/material.dart';
import 'src/good_alert_widget.dart';

export 'src/good_alert_widget.dart' show GoodAlertWidget;

class GoodAlert {

  GoodAlertWidget widget;
  BuildContext context;
  String text;

  GoodAlert(BuildContext context){
    this.context = context;
    this.widget = GoodAlertWidget();
    this.text = text;
  }
  // message
  GoodAlert message(String text){
    this.widget.message = text;
    return this;
  }
  // dismiss widget
  GoodAlert dismissible(bool dismissible){
    this.widget.cancelable = dismissible;
    return this;
  }

  void show(){
    showDialog(context: this.context,
        child: this.widget
    );
  }

  void dismiss(){
    if(Navigator.canPop(this.context))
      Navigator.pop(context);
  }
}
