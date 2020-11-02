
import 'package:flutter/services.dart';

enum UiOverlayMode {
  HIDE_STATUS_BAR,
  HIDE_BOTTOM_MENU_BAR,
  FULLSCREEN_MODE
}

class UiOverlays {

  static void hideStatusBar(){
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
  }

  static void hideBottomMenuBar(){
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
  }

  static void fullScreenMode(){
    SystemChrome.setEnabledSystemUIOverlays ([]);
  }

  static void mode(UiOverlayMode uiOverlayMode){
    switch(uiOverlayMode){
      case UiOverlayMode.HIDE_STATUS_BAR:
        hideStatusBar();
        break;
      case UiOverlayMode.HIDE_BOTTOM_MENU_BAR:
        hideBottomMenuBar();
        break;
      case UiOverlayMode.FULLSCREEN_MODE:
        fullScreenMode();
        break;
    }
  }

}