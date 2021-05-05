import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/resources/const_screens_date.dart';
import 'package:test_task/resources/example_date.dart';

Padding buildPaymentDescription(BuildContext context) {
  return Padding(
    padding: kPadding.standardHorizontal,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (exampleCountNis.count.toString() + kCartScreenData.nis)
              .toUpperCase(),
          style: kTextStyle.montserratRegular20black,
        ),
        Text(
          kCartScreenData.descriptionNis,
          style: kTextStyle.montserratRegular14,
        ),
      ],
    ),
  );
}
