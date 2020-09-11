import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NativeIosAlert extends StatelessWidget {

  final String title;
  final String message;
  List<CupertinoDialogAction> actions;
  NativeIosAlert({this.title, this.message, this.actions});
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(this.title),
      content: Text(this.message),
      actions: this.actions == null ? [] : this.actions,
    );
  }
}
