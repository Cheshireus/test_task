import 'package:flutter/material.dart';
import 'package:test_task/widgets/video_list_title.dart';
import 'package:test_task/resources/theme.dart';

Container buildVideoListTitle(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 16),
    color: kColors.lightGray,
    child: VideoListTitle(
      leadingImage: AssetImage('assets/images/video_Image.png'),
      title: "Loop name",
      subTitle: 'Description Lorem ipsum fufb haonr s djkdh jaunr ',
      dataTime: DateTime.now(),
      onTapPlayPause: () {
        print('play');
      },
    ),
  );
}
