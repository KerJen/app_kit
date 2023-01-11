import 'package:flutter/material.dart';

import 'gesture_detector.dart';

AppBar appBar({
  required String title,
  Color? backgroundColor,
  bool centerTitle = false,
  TextStyle titleStyle = const TextStyle(color: Colors.black, fontSize: 14),
  Widget? leading,
  double buttonHeight = 36,
  double buttonWidth = 60,
  Widget? trailing,
  EdgeInsets padding = const EdgeInsets.only(left: 24, top: 12, bottom: 12),
  IconThemeData iconTheme = const IconThemeData(color: Colors.black),
  Function()? onLeadingTap,
  Function()? onTrailingTap,
}) {
  return AppBar(
    toolbarHeight: buttonHeight + padding.bottom + padding.top,
    leadingWidth: buttonWidth + padding.left,
    automaticallyImplyLeading: leading != null,
    leading: leading != null
        ? Container(
            margin: EdgeInsets.only(left: padding.left),
            width: buttonWidth,
            child: AppGestureDetector(
              onTap: onLeadingTap,
              child: leading,
            ),
          )
        : null,
    title: Text(title, style: titleStyle),
    centerTitle: centerTitle,
    actionsIconTheme: iconTheme,
    actions: [
      if (trailing != null)
        AppGestureDetector(
          onTap: onTrailingTap ?? () {},
          child: Container(
            margin: EdgeInsets.only(right: padding.right),
            width: buttonWidth,
            alignment: Alignment.center,
            child: trailing,
          ),
        ),
    ],
    backgroundColor: backgroundColor,
  );
}
