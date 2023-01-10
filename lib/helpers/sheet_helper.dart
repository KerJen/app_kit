import 'package:flutter/material.dart';

class SheetHelper {
  static Future<T?> show<T>(
    BuildContext context,
    Widget Function(BuildContext context) builder, {
    Color backgroundColor = Colors.white,
    Color barrierColor = Colors.grey,
    bool hasShadow = false,
    bool useRootNavigator = true,
    bool isScrollControlled = false,
    EdgeInsets padding = EdgeInsets.zero,
    bool enableDrag = true,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      backgroundColor: backgroundColor,
      enableDrag: enableDrag,
      barrierColor: barrierColor.withOpacity(0.2),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      builder: (context) {
        return Container(
          padding: padding,
          decoration: BoxDecoration(
            color: backgroundColor,
            boxShadow: [
              if (hasShadow)
                const BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, -3),
                  blurRadius: 10,
                ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: builder(context),
        );
      },
    );
  }
}
