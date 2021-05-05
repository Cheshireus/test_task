import 'package:flutter/material.dart';
import 'package:test_task/resources/const_screens_date.dart';
import 'package:test_task/resources/example_date.dart';
import 'package:test_task/resources/thems.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static const id = "OrderSummary";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home_outlined),
          onPressed: () {},
        ),
        title: Text(
          kOrderSummaryData.appBarTitle,
          style: kTextStyle.appBarTitle,
        ),
        centerTitle: true,
      ),
    );
  }
}
