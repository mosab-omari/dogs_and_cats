import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/gen/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../multi_media/image_placeholder.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {Key? key,
      required this.imageUrl,
      this.color,
      this.colorBlendMode,
      this.radius = 0,
      this.fit = BoxFit.cover,
      this.onLoaded,
      this.placeholder})
      : super(key: key);
  final String? imageUrl;
  final Color? color;
  final BlendMode? colorBlendMode;
  final BoxFit fit;
  final Function()? onLoaded;
  final double radius;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    return imageUrl == null || imageUrl!.isEmpty
        ? ImagePlaceHolder(
            colorBlendMode: colorBlendMode,
            color: color,
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: CachedNetworkImage(
              key: ValueKey(imageUrl),
              cacheKey: imageUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                if (downloadProgress.progress == downloadProgress.downloaded &&
                    onLoaded != null) {
                  onLoaded!();
                }
                return Container(
                    color: AppColors.white,
                    child:
                        placeholder ?? Assets.animations.imageLoading.lottie());
              },
              imageUrl: imageUrl!,
              fit: fit,
              color: color,
              colorBlendMode: colorBlendMode,
            ),
          );
  }
}
