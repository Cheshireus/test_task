import 'package:flutter/material.dart';
import 'package:test_task/resources/const_screens_date.dart';
import 'package:test_task/resources/icons_path.dart';
import 'package:test_task/util.dart';
import 'package:test_task/widgets/button_with_outline.dart';
import 'package:test_task/resources/thems.dart';

class HistoryListTitle extends StatelessWidget {
  final String title;
  final TextStyle? titleTextStyle;
  final DateTime date;
  final List<DateTime> listTime;
  final String subtitle;
  final TextStyle? subtitleTextStyle;
  final EdgeInsets? padding;
  final void Function()? callBackButtonEdit;
  final void Function()? callBackButtonTrash;
  const HistoryListTitle(
      {Key? key,
      required this.title,
      required this.date,
      required this.listTime,
      required this.subtitle,
      this.padding,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.callBackButtonEdit,
      this.callBackButtonTrash})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: title,
                  style: titleTextStyle ?? kTextStyle.TitleBold,
                  children: [
                    TextSpan(
                      text: '\t ${dateToString(date)}',
                      style: kTextStyle.montserratRegular14Black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: '${this.listTime.length} hours  ',
                  style: kTextStyle.montserratRegular14Black,
                  children: List.generate(
                    listTime.length,
                    (index) => TextSpan(
                      text: timeToString(listTime[index]) + " ",
                      style: kTextStyle.montserratRegular14,
                    ),
                  ),
                ),
              ),
              Divider(
                color: kColors.black,
                thickness: 1.5,
                endIndent: 0,
                indent: 0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: subtitleTextStyle ??
                        kTextStyle.montserratRegular14Black,
                  ),
                  Spacer(),
                  Visibility(
                    visible: callBackButtonEdit != null,
                    child: ButtonWithOutline(
                      title: kCartScreenData.buttonEdit,
                      onTap: callBackButtonEdit ?? () {},
                    ),
                  ),
                  Visibility(
                    visible: callBackButtonTrash != null,
                    child: IconButton(
                      onPressed: callBackButtonTrash ?? () {},
                      icon: Image.asset(kIconsPath.trash),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
