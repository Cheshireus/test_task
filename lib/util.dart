import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//hh:mm format
DateTime parseTime(String time) => DateFormat("hh:mm").parse(time);
// dd.MM.yyyy formate
DateTime parseDate(String date) => DateFormat("dd.MM.yyyy").parse(date);

String timeToString(DateTime time) => DateFormat.Hm().format(time);
String dateToString(DateTime date) => DateFormat("dd.MM.yyyy").format(date);

String obscureCard(String card) {
  try {
    return card.replaceRange(0, card.length - 4, "*" * (card.length - 4));
  } catch (e) {
    return (e.toString());
  }
}
