import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NativeAndroidAlert extends StatelessWidget {
  final String title;
  final String message;
  List<Widget> actions;
  NativeAndroidAlert({ this.title, this.message, this.actions });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text(this.title),
      content: new Text(this.message),
      actions: this.actions == null ? [] : this.actions,
    );
  }
}
