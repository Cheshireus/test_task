import 'package:flutter/material.dart';
import 'package:test_task/resources/thems.dart';
import 'package:test_task/resources/const_screens_date.dart';
import 'package:test_task/resources/example_date.dart';

Widget buildPaymentDescription(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: kPadding.standardHorizontal,
        child: Text(
          (exampleCountNis.count.toString() + kCartScreenData.nis)
              .toUpperCase(),
          style: kTextStyle.montserratRegular20black,
        ),
      ),
      Container(
        margin: kPadding.standardleft,
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        width: double.infinity,
        color: kColors.lightGray,
        child: Text(
          kCartScreenData.descriptionNis,
          style: kTextStyle.montserratRegular14,
        ),
      ),
    ],
  );
}
