import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final Color color;
  final Color? secColor;
  final Widget? child;

  const ShimmerWidget.rectangular(
      {super.key,
        this.width = double.maxFinite,
        required this.height,
        this.shapeBorder = const RoundedRectangleBorder(),
        this.color = Colors.black12,
        this.secColor,
        this.child});

  const ShimmerWidget.circular({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder(),
    this.color = Colors.black12,
    this.secColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: color,
      highlightColor: (secColor != null) ? secColor! : Colors.black38,
      period: const Duration(milliseconds: 750),
      child: child ??
          Container(
            width: width,
            height: height,
            decoration: ShapeDecoration(
              color: Colors.black38,
              shape: shapeBorder,
            ),
          ),
    );
  }
}
