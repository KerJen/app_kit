import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppGestureDetector extends StatelessWidget {
  final Function()? onTap;
  final Function(TapDownDetails)? onTapDown;
  final HitTestBehavior behavior;
  final EdgeInsets padding;
  final bool hasFeedback;
  final Widget child;

  const AppGestureDetector({
    Key? key,
    this.onTap,
    this.onTapDown,
    this.behavior = HitTestBehavior.translucent,
    this.padding = EdgeInsets.zero,
    this.hasFeedback = false,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: behavior,
      onTap: onTap != null
          ? () {
              onTap!();
              if (hasFeedback) HapticFeedback.mediumImpact();
            }
          : null,
      onTapDown: onTapDown,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
