import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';

class ButtonWithOutline extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final EdgeInsets? padding;
  const ButtonWithOutline(
      {Key? key, required this.title, this.padding, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: kTextStyle.button.copyWith(color: kColors.gray),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          padding ?? EdgeInsets.symmetric(horizontal: 37),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              color: kColors.gray,
            ),
          ),
        ),
        overlayColor: MaterialStateProperty.all(kColors.gray),
      ),
    );
  }
}
