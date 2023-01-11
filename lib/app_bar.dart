import 'package:flutter/material.dart';

import 'gesture_detector.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Color? backgroundColor;
  final bool centerTitle;
  final TextStyle titleStyle;
  final Widget? leading;
  final double buttonHeight;
  final double buttonWidth;
  final Widget? trailing;
  final EdgeInsets padding;
  final IconThemeData? iconTheme;
  final Function()? onLeadingTap;
  final Function()? onTrailingTap;

  const AppAppBar({
    super.key,
    this.title,
    this.backgroundColor,
    this.centerTitle = false,
    this.titleStyle = const TextStyle(color: Colors.black, fontSize: 14),
    this.leading,
    this.buttonHeight = 36,
    this.buttonWidth = 60,
    this.trailing,
    this.padding = const EdgeInsets.only(left: 24, top: 12, bottom: 12),
    this.iconTheme,
    this.onLeadingTap,
    this.onTrailingTap,
  });

  @override
  Size get preferredSize => Size.fromHeight(buttonHeight + padding.bottom + padding.top);

  @override
  Widget build(BuildContext context) {
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
                child: leading!,
              ),
            )
          : null,
      title: title,
      centerTitle: centerTitle,
      actionsIconTheme: iconTheme ?? Theme.of(context).iconTheme,
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
}
