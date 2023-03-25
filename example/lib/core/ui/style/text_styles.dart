import 'package:flutter/material.dart';
import 'colors.dart';

TextStyle custom({
  required double fontSize,
  required FontWeight fontWeight,
  Color color = blackColor,
  String fontId = 'Roboto',
  double? height,
}) {
  return TextStyle(
    fontFamily: fontId,
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: height,
    color: color,
  );
}

TextStyle regular({
  Color color = blackColor,
  String fontId = 'Roboto',
  double? height,
}) {
  return custom(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: color,
    fontId: fontId,
    height: height,
  );
}

TextStyle medium({
  Color color = blackColor,
  String fontId = 'Roboto',
  double? height,
}) {
  return custom(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: color,
    fontId: fontId,
    height: height,
  );
}

TextStyle largeRegular({
  Color color = blackColor,
  String fontId = 'Roboto',
  double? height,
}) {
  return custom(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color,
    fontId: fontId,
    height: height,
  );
}

TextStyle large({
  Color color = blackColor,
  String fontId = 'Roboto',
  double? height,
}) {
  return custom(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: color,
    fontId: fontId,
    height: height,
  );
}
