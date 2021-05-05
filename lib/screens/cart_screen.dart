import 'package:flutter/material.dart';
import 'package:test_task/widgets/gradient_button_wrapper.dart';
import 'package:test_task/widgets/wrapperDivider.dart';
import 'build_card_screen/build_app_bar.dart';
import 'build_card_screen/build_history_list.dart';
import 'build_card_screen/build_list_payment_options.dart';
import 'build_card_screen/build_payment_description.dart';
import 'build_card_screen/build_video_list_title.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/resources/const_screens_date.dart';

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
                kCartScreenData.payWith,
                style: kTextStyle.montserratRegular14Black,
              ),
            ),
            buildListPaymentOptions(context),
            GradientButtonWrapper(
              onTap: () {
                //todo tap check out
                print('todo tap check out');
              },
              title: kCartScreenData.buttonCheckOut,
            ),
          ],
        ),
      ),
    );
  }
}
