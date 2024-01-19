import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/features/home_app/data/models/get_animals_response.dart';
import 'package:algooru_flutter_assessment/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/image/app_image.dart';
import '../../../data/models/animal.dart';

class DogCard extends StatelessWidget {
  const DogCard({super.key, required this.dog, this.onTap});

  final Animal dog;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.black),
      height: 300,
      child: GestureDetector(
        onTap: onTap,
        child: CustomNetworkImage(
          radius: 12,
          // placeholder: Assets.images.general.dogPaw.image(),
          fit: BoxFit.fitHeight,
          imageUrl: dog.url,
        ),
      ),
    );
  }
}
