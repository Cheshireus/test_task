import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/util.dart';
import 'package:test_task/widgets/history_list_title.dart';

Widget buildHistoryList(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: kPadding.standardHorizontal,
        child: Text('My Selected screens', style: kTextStyle.appBarTitle),
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
                title: "Mifgash Moshe",
                date: DateTime.now(),
                listTime: List.generate(
                    i + 1, (index) => parseTime('${8 + index}:00')),
                subtitle: '0NIS',
                callBackButtonEdit: () {},
                callBackButtonTrash: () {},
              ),
            ),
            itemCount: 3,
          ),
        ),
      ),
    ],
  );
}
