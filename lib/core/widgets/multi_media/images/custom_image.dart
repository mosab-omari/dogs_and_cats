import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../image_placeholder.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.imageUrl,
      this.color,
      this.colorBlendMode,
      this.fit = BoxFit.cover,
      this.onLoaded});
  final String? imageUrl;
  final Color? color;
  final BlendMode? colorBlendMode;
  final BoxFit fit;
  final Function()? onLoaded;

  @override
  Widget build(BuildContext context) {
    return imageUrl == null || imageUrl!.isEmpty
        ? ImagePlaceHolder(
            colorBlendMode: colorBlendMode,
            color: color,
          )
        : CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: fit,
            color: color,
            colorBlendMode: colorBlendMode,
          );
  }
}
