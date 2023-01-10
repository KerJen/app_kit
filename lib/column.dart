import 'package:flutter/widgets.dart';

class AppColumn extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final Widget? separator;

  const AppColumn({
    Key? key,
    this.children = const [],
    this.padding = EdgeInsets.zero,
    this.separator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < children.length; i++) ...[
            children[i],
            if (i != children.length - 1 && separator != null) separator!,
          ]
        ],
      ),
    );
  }
}
