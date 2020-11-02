import 'package:flutter/material.dart';
import 'package:flutter_components/src/safearea/src/ui_overlays.dart';

export 'src/ui_overlays.dart';

class FlutterSafeArea extends StatelessWidget {

  final Widget child;
  final UiOverlayMode uiOverlayMode;

  FlutterSafeArea({Key key, this.child, this.uiOverlayMode}):super(key: key);

  @override
  Widget build(BuildContext context) {
    if(this.uiOverlayMode != null){
      UiOverlays.mode(this.uiOverlayMode);
    }
    return SafeArea(child: this.child ?? Container());
  }
}
