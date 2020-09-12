import 'package:flutter/material.dart';


class ListSeparated<T> extends StatefulWidget {

  final ScrollController controller;
  final List<T> results;
  final Function itemBuilder;

  ListSeparated({
    Key key,
    this.controller,
    @required this.results,
    @required this.itemBuilder
  }) : super(key : key);

  @override
  _ListSeparatedState createState() => _ListSeparatedState();
}

class _ListSeparatedState extends State<ListSeparated> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade400, height: 0,
      ),
      controller: widget.controller,
      itemCount: widget.results.length,
      itemBuilder: widget.itemBuilder,
    );
  }
}
