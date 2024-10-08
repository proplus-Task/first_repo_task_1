// coverage:ignore-file

import 'package:flutter/material.dart';

/// A list of custom color used in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class ColorsValue {
  // static const int primaryColorCode = 0xff3c89fc;

  static const int primaryColorCode = 0xff14acec;
  static const Color primaryColor = Color(primaryColorCode);

  // static const int buttonColorCode = 0xfffb9a0a;
  static const int buttonColorCode = 0xff14acec;
  static const Color buttonColor = Color(buttonColorCode);

  static const int buttonFadedColorCode = 0xffBEBCBB;
  static const Color buttonFadedColor = Color(buttonFadedColorCode);

  static const int textFieldErrorCode = 0xffe63f36;
  static const Color textFieldErrorColor = Color(textFieldErrorCode);

  static Color backgroundColor = Colors.white;

  static Color blackcolor = Colors.black;

  static Color black38color = Colors.black38;

  static Color white30color = Colors.white30;

  static Color dropdownbordercolor = Colors.black38;

  static Color backgroudwhitecolor = Colors.black38;

  static const int lightGreyColorHex = 0xffa7b3c4;
  static const Color lightGreyColor = Color(
    lightGreyColorHex,
  );

  static const int brilliantWhiteCode = 0xffedf1fe;
  static const Color brilliantWhiteColor = Color(
    brilliantWhiteCode,
  );
}
