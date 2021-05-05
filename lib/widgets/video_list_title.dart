import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_task/resources/theme.dart';

class VideoListTitle extends StatelessWidget {
  final ImageProvider leadingImage;
  final EdgeInsets? padding;
  final double horizontalTitleGap;
  final String title;
  final String subTitle;
  final DateTime dataTime;
  final TextStyle? titleTextStyle;
  final TextStyle? subTittleTextStyle;
  final TextStyle? dataTimeTextStyle;
  final void Function() onTapPlayPause;
  static const _defaultPadding = EdgeInsets.only(right: 7, top: 10, bottom: 10);
  static const _titleTextStyle = kTextStyle.kVideoListTitleTextStyle;
  static const _subTittleTextStyle = kTextStyle.kVideoSubtitleTextStyle;
  static const _dataTimeTextStyle = kTextStyle.kVideoSubtitleTime;

  const VideoListTitle({
    Key? key,
    required this.leadingImage,
    this.padding,
    this.horizontalTitleGap = 11,
    required this.title,
    required this.subTitle,
    this.titleTextStyle,
    this.subTittleTextStyle,
    required this.dataTime,
    this.dataTimeTextStyle,
    required this.onTapPlayPause,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? _defaultPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              constraints: BoxConstraints(
                maxHeight: 80,
                maxWidth: 150,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: leadingImage,
                    fit: BoxFit.fitHeight,
                    height: double.infinity,
                  ),
                  IconButton(
                    onPressed: onTapPlayPause,
                    icon: Icon(
                      Icons.play_circle_fill,
                      color: kColors.white,
                      size: 31,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: this.horizontalTitleGap,
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(maxHeight: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: this.titleTextStyle ?? _titleTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 16),
                    child: Text(
                      subTitle,
                      style: this.subTittleTextStyle ?? _subTittleTextStyle,
                    ),
                  ),
                  Spacer(),
                  Text(
                    DateFormat.Hm().format(dataTime),
                    style: this.dataTimeTextStyle ?? _dataTimeTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
