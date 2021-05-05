import 'package:flutter/material.dart';
import 'package:test_task/resources/example_date.dart';
import 'package:test_task/widgets/list_of_payment_options.dart';

ListPaymentOptions buildListPaymentOptions(BuildContext context) {
  return ListPaymentOptions(
    callbackChoicePaymentMethod: (int index) {
      //todo tap get pay index method
      print("tap get pay index method $index");
    },
    listCreditCart: List.generate(exampleListCardData.list.length,
        (index) => exampleListCardData.list[index].numberCard),
    onTapAddCreditCart: () {
      //todo tap add pay card
      print('add pay card');
    },
  );
}
