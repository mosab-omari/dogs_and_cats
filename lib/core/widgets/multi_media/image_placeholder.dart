import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';


class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key, this.color, this.colorBlendMode});
  final Color? color;
  final BlendMode? colorBlendMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Assets.images.general.imagePlaceholder.svg());
  }
}
