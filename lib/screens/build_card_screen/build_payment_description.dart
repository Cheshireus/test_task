import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/resources/const_string.dart';
import 'package:test_task/resources/example_date.dart';

Widget buildPaymentDescription(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: kPadding.standardHorizontal,
        child: Text(
          (exampleCountNis.count.toString() + kStringCart.nis).toUpperCase(),
          style: kTextStyle.montserratRegular20black,
        ),
      ),
      Container(
        margin: kPadding.standardleft,
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        width: double.infinity,
        color: kColors.lightGray,
        child: Text(
          kStringCart.descriptionNis,
          style: kTextStyle.montserratRegular14,
        ),
      ),
    ],
  );
}
