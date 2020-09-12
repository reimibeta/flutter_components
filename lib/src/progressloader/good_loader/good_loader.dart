library flutter_good_loader;

import 'package:flutter/material.dart';
import './src/good_loader_widget.dart';

export './src/good_loader_widget.dart' show GoodLoaderWidget;

class GoodLoader {

  GoodLoaderWidget widget;
  BuildContext context;

  GoodLoader(BuildContext context){
    this.context = context;
    this.widget = GoodLoaderWidget();
  }
  // dismiss widget
  GoodLoader dismissible(bool dismissible){
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