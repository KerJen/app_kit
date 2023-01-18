import '../gesture_detector.dart';
import 'package:flutter/material.dart';

Future<T?> showPopup<T>(
  BuildContext context,
  Widget child, {
  Color backgroundColor = Colors.white,
  EdgeInsets insetPadding = const EdgeInsets.symmetric(horizontal: 16),
  bool dismissable = true,
}) {
  return showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.8),
    barrierDismissible: dismissable,
    builder: (context) => Dialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
      insetPadding: insetPadding,
      backgroundColor: backgroundColor,
      child: Stack(
        children: [
          child,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppGestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.close,
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
