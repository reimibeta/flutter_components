import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final Widget title;
  final Widget subtitle;
  final Widget trailingIcon;
  final Function onTap;

  ListItem({Key key,
    this.title,
    this.subtitle,
    this.trailingIcon,
    this.onTap
  }):super(key: key);


  Widget _title(){
    return this.title;
  }

  Widget _subtitle(){
    return this.subtitle != null ? this.subtitle : null;
  }

  Widget _trailing(){
    return this.trailingIcon != null ? Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
      child: InkWell(
        child: this.trailingIcon,
      ),
    ) : null;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _title(),
      subtitle: _subtitle(),
      trailing: _trailing(),
      onTap:() async {
        if(this.onTap != null)
          this.onTap();
      }
    );
  }
}
