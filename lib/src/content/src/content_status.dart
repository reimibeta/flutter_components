import 'package:flutter/material.dart';
import 'content_text.dart';

class ContentStatus extends StatelessWidget {

  final String title;
  final bool status;
  final String success;
  final String error;

  ContentStatus({Key key,
    @required this.title,
    @required this.status,
    this.success,
    this.error
  }):super(key: key);

  Widget _status(){
    if(this.status){
      return ContentText(
        title: "${this.title}",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        contentWidget: Row(
          children: [
            Text("",),
            Text("${this.success ?? 'success'}", style: TextStyle(color: Colors.green.shade700),)
          ],
        ),
        contentStyle: null,
      );
    } else {
      return ContentText(
        title: "${this.title}",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        contentWidget: Row(
          children: [
            Text("",),
            Text("${this.error ?? 'error'}", style: TextStyle(color: Colors.red.shade700),)
          ],
        ),
        contentStyle: null,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _status());
  }
}
