import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:test_task/resources/thems.dart';

class GradientButtonWrapper extends StatelessWidget {
  final String title;
  final double increaseWidthBy;
  final void Function() onTap;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final Gradient? gradient;
  const GradientButtonWrapper({
    Key? key,
    required this.title,
    required this.onTap,
    this.increaseWidthBy = 90,
    this.textStyle,
    this.borderRadius,
    this.gradient,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GradientButton(
      shapeRadius: borderRadius ?? BorderRadius.all(Radius.circular(12)),
      increaseWidthBy: increaseWidthBy,
      textStyle: textStyle ?? kTextStyle.button,
      child: Text(title),
      callback: onTap,
      gradient: gradient ?? kGradient.buttonGradient,
    );
  }
}
