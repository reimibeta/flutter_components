
import 'package:flutter/services.dart';

enum UiOverlayEnum {
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

  static void mode(UiOverlayEnum uiOverlayEnum){
    switch(uiOverlayEnum){
      case UiOverlayEnum.HIDE_STATUS_BAR:
        hideStatusBar();
        break;
      case UiOverlayEnum.HIDE_BOTTOM_MENU_BAR:
        hideBottomMenuBar();
        break;
      case UiOverlayEnum.FULLSCREEN_MODE:
        fullScreenMode();
        break;
    }
  }

}