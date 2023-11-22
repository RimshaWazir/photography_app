import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_2/Data/Datasource/Resources/color.dart';

extension Scale on BuildContext {
  double get textScale => MediaQuery.of(this).textScaleFactor;
}

class Styles {
  static double _textScale(
    BuildContext context,
  ) {
    return MediaQuery.of(context).textScaleFactor > 1.0
        ? 0.9
        : MediaQuery.of(context).textScaleFactor;
  }

  static TextStyle circularStd(BuildContext context,
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: (fontSize ?? 16.0.sp) * _textScale(context),
        letterSpacing: letterSpacing ?? 0,
        color: color ?? AppColors.blackColor,
        fontFamily: "Circular Std",
        fontWeight: fontWeight ?? FontWeight.normal);
  }
}
