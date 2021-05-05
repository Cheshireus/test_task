import 'package:flutter/material.dart';
import 'package:test_task/resources/const_screens_date.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {},
    ),
    title: Text(kCartScreenData.appBarTitle),
    centerTitle: true,
  );
}
