import 'package:flutter/material.dart';
import 'package:test_task/resources/thems.dart';

class CustomButtonWithCircle extends StatelessWidget {
  final Radius? radius;
  final Color? backGroundColor;
  final Color? foregroundColor;
  const CustomButtonWithCircle(
      {Key? key, this.radius, this.backGroundColor, this.foregroundColor, p})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          color: backGroundColor ?? kColors.white,
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: CircleAvatar(
        backgroundColor: foregroundColor ?? kColors.blue,
      ),
    );
  }
}
