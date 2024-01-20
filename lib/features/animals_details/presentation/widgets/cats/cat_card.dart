import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/core/widgets/image/app_image.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:flutter/material.dart';


class CatCard extends StatelessWidget {
  const CatCard({super.key, required this.cat, this.onTap});

  final Animal cat;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.black,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CustomNetworkImage(
            // placeholder: Center(child: Assets.images.general.catPaw.image()),
            imageUrl: cat.url,
          ),
        ),
      ),
    );
  }
}
