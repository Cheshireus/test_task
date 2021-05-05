import 'package:flutter/material.dart';
import 'package:test_task/widgets/video_list_title.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/resources/example_date.dart';

Container buildVideoListTitle(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 16),
    color: kColors.lightGray,
    child: VideoListTitle(
      leadingImage: AssetImage(exampleVideoDate.imagePath),
      title: exampleVideoDate.title,
      subTitle: exampleVideoDate.description,
      dataTime: exampleVideoDate.time,
      onTapPlayPause: () {
        //todo tap play video in VideoListTitle
        print('play video');
      },
    ),
  );
}
