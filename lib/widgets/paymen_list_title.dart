import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/widgets/custom_button_with_circle.dart';

class PaymentListTitle extends StatelessWidget {
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final EdgeInsets? contentPadding;
  final Widget? leading;
  final Widget? title;

  final void Function()? onTap;
  final bool isChek;
  const PaymentListTitle({
    Key? key,
    this.backgroundColor,
    this.margin,
    this.contentPadding,
    this.leading,
    this.title,
    this.onTap,
    required this.isChek,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      color: backgroundColor ?? kColors.lightGray,
      child: ListTile(
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20),
        leading: leading,
        title: title,
        trailing: isChek ? CustomButtonWithCircle() : null,
        onTap: onTap,
      ),
    );
  }
}
