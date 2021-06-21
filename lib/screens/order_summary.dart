import 'package:flutter/material.dart';
import 'package:test_task/resources/const_string.dart';
import 'package:test_task/resources/example_date.dart';
import 'package:test_task/resources/images_path.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/screens/build_card_screen/build_video_list_title.dart';
import 'package:test_task/screens/cart_screen.dart';
import 'package:test_task/widgets/button_with_outline.dart';
import 'package:test_task/widgets/gradient_button_wrapper.dart';
import 'package:test_task/widgets/history_list_title.dart';
import 'package:test_task/widgets/wrapper_divider.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static const id = "OrderSummary";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildVideoListTitle(context),
                Padding(
                  padding: kPadding.standardHorizontal.copyWith(top: 12, bottom: 14),
                  child: Text(
                    kStringOrderSummary.title,
                    style: kTextStyle.appBarTitle,
                  ),
                ),
                buildHistoryList(context),
                WrapperDivider(),
                buildNisBloc(context),
                SizedBox(
                  height: 20,
                ),
                GradientButtonWrapper(
                  title: kStringOrderSummary.gradientButton,
                  onTap: () {
                    //todo on tap go my profile
                    print("todo on tap go my profile");
                  },
                ),
                ButtonWithOutline(
                  title: kStringOrderSummary.outlineButton,
                  onTap: () {
                    //todo on tap outline button
                    print("on tap outline button");
                  },
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(kImagesPath.home),
        onPressed: () {
          Navigator.pushNamed(context, CartScreen.id);
          //todo ontap home
        },
      ),
      title: Text(
        kStringOrderSummary.appBarTitle,
        style: kTextStyle.appBarTitle,
      ),
      centerTitle: true,
    );
  }
}

Widget buildHistoryList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        constraints: BoxConstraints(maxHeight: 500),
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, i) => Container(
              margin: kPadding.standardRight,
              color: kColors.white,
              child: HistoryListTitle(
                title: exampleListHistoryData.list[i].title,
                date: exampleListHistoryData.list[i].date,
                listTime: exampleListHistoryData.list[i].listTime,
                subtitle: exampleListHistoryData.list[i].subtitle,
              ),
            ),
            itemCount: exampleListHistoryData.list.length,
          ),
        ),
      ),
    ],
  );
}

Widget buildNisBloc(BuildContext context) {
  return Padding(
    padding: kPadding.standardHorizontal,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kStringOrderSummary.total,
          style: kTextStyle.montserrat13Blue,
        ),
        Text(
          exampleCountNis.count.toString() + kStringOrderSummary.nis,
          style: kTextStyle.montserratRegular20black,
        ),
      ],
    ),
  );
}
