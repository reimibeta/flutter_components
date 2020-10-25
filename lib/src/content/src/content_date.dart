import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';


class ContentDate extends StatelessWidget {

  final String date;
  final String locale;
  final String error;

  ContentDate({Key key, this.date, this.locale, this.error }):super(key: key);

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

  String _date(String date, {@required String error}){
    return date == null ? error : _format(date, locale: "km");
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return Text(_date(this.date, error: this.error ?? "not available"));
  }
}
