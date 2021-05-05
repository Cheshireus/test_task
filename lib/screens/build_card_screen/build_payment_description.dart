import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';

Padding buildPaymentDescription(BuildContext context) {
  return Padding(
    padding: kPadding.standardHorizontal,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "200 NIS".toUpperCase(),
          style: kTextStyle.montserratRegular20black,
        ),
        Text(
          "The payment will be proceed after \n screen owner approval",
          style: kTextStyle.montserratRegular14,
        ),
      ],
    ),
  );
}
