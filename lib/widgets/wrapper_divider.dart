import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';

class WrapperDivider extends StatelessWidget {
  final Color? color;
  final double? indent;
  final double? endIndent;
  final double? height;

  const WrapperDivider(
      {Key? key,
      this.color,
      this.indent = 12,
      this.endIndent = 25,
      this.height = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? kColors.divider,
      indent: indent,
      endIndent: endIndent,
      height: height,
    );
  }
}
