import 'package:flutter/material.dart';
import 'package:test_task/util.dart';
import 'package:test_task/widgets/gradient_button_wrapper.dart';
import 'package:test_task/widgets/list_of_payment_options.dart';
import 'package:test_task/widgets/wrapperDivider.dart';
import 'build_card_screen/build_app_bar.dart';
import 'build_card_screen/build_history_list.dart';
import 'build_card_screen/build_payment_description.dart';
import 'build_card_screen/build_video_list_title.dart';
import 'package:test_task/resources/theme.dart';

class CartScreen extends StatelessWidget {
  static const id = "card";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildVideoListTitle(context),
            buildHistoryList(context),
            WrapperDivider(),
            buildPaymentDescription(context),
            Padding(
              padding:
                  kPadding.standardHorizontal.copyWith(top: 12, bottom: 12),
              child: Text(
                'Pay With',
                style: kTextStyle.montserratRegular14Black,
              ),
            ),
            ListOfPaymentOptions(
              callbackChoicePaymentMethod: (int index) {
                //todo tap get pay index method
                print("tap get pay index method $index");
              },
              listCreditCart: [
                obscureCard('12355465890'),
                '25647859525',
                '56879921456',
              ],
              onTapAddCreditCart: () {
                //todo tap add pay card
                print('add pay card');
              },
            ),
            GradientButtonWrapper(
              onTap: () {
                //todo tap check out
                print('todo tap check out');
              },
              title: 'Check out',
            ),
          ],
        ),
      ),
    );
  }
}
