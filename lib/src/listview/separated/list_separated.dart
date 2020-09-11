import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListSeparated<T> extends StatefulWidget {

  List<T> results;
  ScrollController controller;
  Function(List<T>) title;
  Function(List<T>) subtitle;
  Widget trailingIcon;
  Function onTap;

  ListSeparated({
    Key key,
    @required this.results,
    this.controller,
    this.onTap,
    @required this.title,
    this.subtitle,
    this.trailingIcon
  }) : super(key : key);

  @override
  _ListSeparatedState createState() => _ListSeparatedState();
}

class _ListSeparatedState extends State<ListSeparated> {

  @override
  void initState() {
    super.initState();
  }

  Widget _subtitle(int position){
    return widget.subtitle != null ? widget.subtitle(widget.results[position]) : null;
  }

  Widget _trailing(){
    return widget.trailingIcon != null ? Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
      child: InkWell(
        child: widget.trailingIcon,
      ),
    ) : Container();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade400, height: 0,
      ),
      controller: this.widget.controller,
      itemCount: this.widget.results.length,
      itemBuilder: (_,int position){
        return new ListTile(
            title: widget.title(widget.results[position]),
            subtitle: _subtitle(position),
            trailing: _trailing(),
            // ignore: unnecessary_statements
            onTap:() async {
              if(widget.onTap != null)
                widget.onTap(this.widget.results[position], position);
            }
        );
      },
    );
  }
}
