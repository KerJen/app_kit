import 'package:flutter/material.dart';

import 'gesture_detector.dart';

AppBar appBar({
  required String title,
  bool centerTitle = false,
  bool showLeading = true,
  TextStyle titleStyle = const TextStyle(color: Colors.black, fontSize: 14),
  Widget? leading,
  double leadingSize = 36,
  Widget? trailing,
  EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  IconThemeData iconThemeData = const IconThemeData(color: Colors.black),
  Function()? onBackTap,
  Function()? onTrailingTap,
}) {
  return AppBar(
    toolbarHeight: leadingSize + padding.bottom + padding.top,
    leadingWidth: leadingSize + 24,
    automaticallyImplyLeading: showLeading,
    leading: showLeading
        ? Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8, left: 24),
            child: SizedBox(
              height: leadingSize,
              width: leadingSize,
              child: leading,
            ),
          )
        : null,
    title: Text(title, style: titleStyle),
    centerTitle: centerTitle,
    actionsIconTheme: iconThemeData,
    actions: [
      if (trailing != null)
        AppGestureDetector(
          onTap: onTrailingTap ?? () {},
          child: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 8, left: 24, right: 24),
            alignment: Alignment.center,
            child: trailing,
          ),
        ),
    ],
    backgroundColor: Colors.transparent,
  );
}
