import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BouncingGestureDetector extends StatefulWidget {
  final HitTestBehavior hitTestBehavior;
  final Function()? onTap;
  final Function(TapDownDetails)? onTapDown;
  final Function()? onLongPress;
  final Widget child;
  final int animationDelay;
  final Duration longPressDuration;

  const BouncingGestureDetector({
    Key? key,
    this.hitTestBehavior = HitTestBehavior.translucent,
    this.onTap,
    this.onLongPress,
    this.onTapDown,
    required this.child,
    this.animationDelay = -20,
    this.longPressDuration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  _BouncingGestureDetectorState createState() => _BouncingGestureDetectorState();
}

class _BouncingGestureDetectorState extends State<BouncingGestureDetector> with TickerProviderStateMixin {
  late final AnimationController _bounceController =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 100), lowerBound: 0.0, upperBound: 0.2);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: RawGestureDetector(
        behavior: widget.hitTestBehavior,
        gestures: <Type, GestureRecognizerFactory>{
          if (widget.onTap != null || widget.onTapDown != null)
            TapGestureRecognizer: GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
              () => TapGestureRecognizer(
                debugOwner: this,
              ),
              (TapGestureRecognizer instance) {
                if (widget.onTap != null) {
                  instance.onTap = () {
                    _bounceController.forward();

                    Future.delayed(Duration(milliseconds: 100 + widget.animationDelay), () {
                      _bounceController.reverse();
                      widget.onTap!.call();
                    });
                  };
                }

                if (widget.onLongPress != null) {
                  instance.onSecondaryTap = () {
                    _bounceController.forward();

                    Future.delayed(Duration(milliseconds: 100 + widget.animationDelay), () {
                      _bounceController.reverse();
                      widget.onLongPress!.call();
                    });
                  };
                }

                if (widget.onTapDown != null) {
                  instance.onTapDown = widget.onTapDown;
                  instance.onSecondaryTapDown = widget.onTapDown;
                }
              },
            ),
          if (widget.onLongPress != null)
            LongPressGestureRecognizer: GestureRecognizerFactoryWithHandlers<LongPressGestureRecognizer>(
              () => LongPressGestureRecognizer(
                debugOwner: this,
                duration: widget.longPressDuration,
              ),
              (LongPressGestureRecognizer instance) {
                if (widget.onLongPress != null) {
                  instance.onLongPress = () {
                    _bounceController.forward();
                    Future.delayed(Duration(milliseconds: 100 + widget.animationDelay), () {
                      _bounceController.reverse();
                    });
                    HapticFeedback.mediumImpact();
                    widget.onLongPress!.call();
                  };
                }
              },
            ),
        },
        child: ScaleTransition(
          scale: Tween(begin: 1.0, end: 0.98).animate(
            CurvedAnimation(parent: _bounceController, curve: Curves.elasticOut),
          ),
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bounceController.dispose();
    super.dispose();
  }
}
