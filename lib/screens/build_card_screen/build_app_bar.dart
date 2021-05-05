import 'package:flutter/material.dart';
import 'package:test_task/resources/const_string.dart';
import 'package:test_task/resources/theme.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
        //todo ontap back
      },
    ),
    title: Text(
      kStringCart.appBarTitle,
      style: kTextStyle.appBarTitle,
    ),
    centerTitle: true,
  );
}
