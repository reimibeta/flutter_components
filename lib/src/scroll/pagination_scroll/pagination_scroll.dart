import 'package:flutter/material.dart';

class PaginationScroll<T> extends StatefulWidget {

  final int start;
  final int limit;
  final ScrollController controller;
  final Function onReachBottom;
  final Function onReachTop;
  final Function(ScrollController) listView;
  final List<T> results;

  PaginationScroll({Key key,
    this.start,
    this.limit,
    @required this.controller,
    this.onReachTop,
    this.onReachBottom,
    @required this.listView,
    this.results
  }) : super(key: key);
  @override
  _PaginationScrollState createState() => new _PaginationScrollState();
}

class _PaginationScrollState extends State<PaginationScroll> {

  int _start = 0;
  int _limit = 1000;

  _scrollListener() {
    if (widget.controller.offset >= widget.controller.position.maxScrollExtent &&
        !widget.controller.position.outOfRange) {

      if(widget.results.length < _start){
        // do nothing when length < start
      } else {
        _start = (_start + _limit);
      }

      if(widget.onReachBottom != null)
        widget.onReachBottom(_start, _limit);

      debugPrint("reach the bottom: $_start");
      print("data length: ${widget.results.length}");
    }
    if (widget.controller.offset <= widget.controller.position.minScrollExtent &&
        !widget.controller.position.outOfRange) {

      if(widget.onReachTop != null)
        widget.onReachTop(_start, _limit);

      debugPrint("reach the top");
    }
  }

  @override
  void initState() {
    _start = widget.start ?? _start;
    _limit = widget.limit ?? _limit;
    widget.controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_scrollListener);
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.listView(widget.controller),
    );
  }
}