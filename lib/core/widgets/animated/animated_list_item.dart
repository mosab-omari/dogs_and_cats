import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class AnimatedListItem extends StatelessWidget {
  const AnimatedListItem({
    super.key,
    required this.index,
    required this.child,
    this.withFadeAnimation = false,
  });
  final int index;
  final Widget child;
  final bool withFadeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
        position: index,
        duration: const Duration(milliseconds: 375),
        child: SlideAnimation(verticalOffset: 100.0, child: child));
  }
}
