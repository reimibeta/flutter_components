import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'content_text.dart';

class ContentDate extends StatelessWidget {

  final String title;
  final String date;
  final String locale;
  final String error;

  ContentDate({Key key,
    @required this.title,
    @required this.date,
    this.locale,
    this.error
  }):super(key: key);

  String _format(String date, {String locale}){
    DateFormat dateFormat = new DateFormat.yMMMMd(locale ?? 'km');
    return dateFormat.format(DateTime.parse(date));
  }

  String _now(){
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    String formatted = formatter. format(now);
    return formatted;
  }

  String _checkEmptyDate(String date, {@required String error}){
    return date == null ? error : _format(date, locale: "km");
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    // return Text(_date(this.date, error: this.error ?? "not available"));
    return ContentText(
      title: "\t\t\t${this.title}",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      content: ":\t${_checkEmptyDate(this.date, error: this.error ?? "not available")}",
    );
  }
}
