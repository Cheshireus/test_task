// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class kColors {
  static const black = Color(0xff0f0f0f);
  static const gray = Color(0xffa5a4af);
  static const lightGray = Color(0xfff0f0f0);
  static const blue = Color(0xff168FCE);
  static const divider = Color(0xffDADEDF);
  static Color get white => Colors.white;
}

// ignore: camel_case_types
class kPadding {
  static const EdgeInsets StandardRight = EdgeInsets.only(right: 8);
  static const EdgeInsets standardHorizontal =
      EdgeInsets.symmetric(horizontal: 20);
}

// ignore: camel_case_types
class kGradient {
  static const Gradient buttonGradient = LinearGradient(
    begin: Alignment(0.58, -1.21),
    end: Alignment(-0.77, 1.6),
    colors: [const Color(0xff1aa9b4), const Color(0xff168ed0)],
    stops: [0.0, 1.0],
  );
}

// ignore: camel_case_types
class kTextStyle {
  static const TextStyle appBarTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    color: const Color(0xff0f0f0f),
    fontWeight: FontWeight.w700,
  );
  static const TextStyle kVideoListTitleTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
  );
  static const TextStyle kVideoSubtitleTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 10,
    color: Color(0xffa5a4af),
  );
  static const TextStyle kVideoSubtitleTime = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 10,
    color: const Color(0xff1a1a1a),
  );
  static const TextStyle montserratRegular20black = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    color: const Color(0xff000000),
  );
  static const TextStyle montserratRegular14 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    color: const Color(0xffa5a4af),
    height: 1.4285714285714286,
  );

  static const TextStyle montserratRegular14Black = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    color: const Color(0xff0f0f0f),
    height: 1.4285714285714286,
  );
  static const TextStyle button = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 13,
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w600,
  );
  static const TextStyle TitleBold = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    color: const Color(0xff0f0f0f),
    fontWeight: FontWeight.w700,
  );
}
