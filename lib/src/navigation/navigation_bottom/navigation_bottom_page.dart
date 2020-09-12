import 'package:flutter/material.dart';

class NavigationBottomPage extends StatefulWidget {

  final List<Widget> widgetOptions;
  final List<BottomNavigationBarItem> items;
  final int index;
  final Color selectedColor;

  NavigationBottomPage({Key key,
    @required this.widgetOptions,
    @required this.items,
    @required this.index,
    this.selectedColor,
  }) : super(key: key);
  @override
  _NavigationBottomPageState createState() => new _NavigationBottomPageState();
}

class _NavigationBottomPageState extends State<NavigationBottomPage> {

  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.index;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: widget.widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: widget.items,
          selectedItemColor: widget.selectedColor ?? Colors.blue,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        )
    );
  }
}
