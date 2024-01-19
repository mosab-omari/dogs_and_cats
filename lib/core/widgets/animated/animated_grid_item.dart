import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedGridItem extends StatelessWidget {
  const AnimatedGridItem(
      {super.key,
      required this.index,
      required this.child,
      this.withFadeAnimation = false});
  final int index;
  final Widget child;
  final bool withFadeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
        position: index,
        duration: const Duration(milliseconds: 450),
        columnCount: 2,
        child: ScaleAnimation(
            scale: 0.5,
            child: FadeInAnimation(
              child: child,
            )));
  }
}
