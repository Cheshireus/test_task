import 'package:flutter/material.dart';
import 'package:test_task/resources/example_date.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/widgets/history_list_title.dart';
import 'package:test_task/resources/const_screens_date.dart';

Widget buildHistoryList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: kPadding.standardHorizontal,
        child: Text(kCartScreenData.title, style: kTextStyle.appBarTitle),
      ),
      Container(
        constraints: BoxConstraints(maxHeight: 500),
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, i) => Container(
              margin: kPadding.StandardRight,
              color: i % 2 != 0 ? kColors.lightGray : kColors.white,
              child: HistoryListTitle(
                title: exampleListHistoryData.list[i].title,
                date: exampleListHistoryData.list[i].date,
                listTime: exampleListHistoryData.list[i].listTime,
                subtitle: exampleListHistoryData.list[i].subtitle,
                callBackButtonEdit: () {},
                callBackButtonTrash: () {},
              ),
            ),
            itemCount: exampleListHistoryData.list.length,
          ),
        ),
      ),
    ],
  );
}
