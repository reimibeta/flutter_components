import 'package:flutter/material.dart';
import 'package:flutter_components/src/safearea/src/ui_overlays.dart';

export 'src/ui_overlays.dart';

class FlutterSafeArea extends StatelessWidget {

  final Widget child;
  final UiOverlayEnum uiOverlay;

  FlutterSafeArea({Key key, this.child, this.uiOverlay}):super(key: key);

  @override
  Widget build(BuildContext context) {
    if(this.uiOverlay != null){
      UiOverlays.mode(this.uiOverlay);
    }
    return SafeArea(child: this.child ?? Container());
  }
}
