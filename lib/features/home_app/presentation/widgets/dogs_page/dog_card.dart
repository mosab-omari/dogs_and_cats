import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/core/constants/theming/app_theme.dart';
import 'package:algooru_flutter_assessment/features/home_app/data/models/get_animals_response.dart';
import 'package:algooru_flutter_assessment/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gap/gap.dart';

import '../../../../../core/widgets/image/app_image.dart';
import '../../../data/models/animal.dart';

class DogCard extends StatelessWidget {
  const DogCard({super.key, required this.dog, this.onTap});

  final Animal dog;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(color: AppColors.black),
          height: 300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Stack(
                fit: StackFit.expand,
                children: [
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: onTap,
                        child: CustomNetworkImage(
                          // radius: 12,
                          // placeholder: Assets.images.general.dogPaw.image(),
                          fit: BoxFit.fitHeight,
                          imageUrl: dog.url,
                        ),
                      ),
                      CustomNetworkImage(
                        radius: 12,
                        // placeholder: Assets.images.general.dogPaw.image(),
                        fit: BoxFit.fitHeight,
                        imageUrl: dog.url,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                              0,
                              0.2
                            ],
                                colors: [
                              Color.fromRGBO(0, 0, 0, 0.3),
                              Color.fromRGBO(0, 0, 0, 0),
                            ])),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [
                          0,
                          0.2
                        ],
                            colors: [
                          Color.fromRGBO(0, 0, 0, 0.3),
                          Color.fromRGBO(0, 0, 0, 0),
                        ])),
                  ),
                ],
              ),
              if (!(dog.breeds?.isEmpty ?? true) &&
                  (dog.breeds?.first.breedGroup != null))
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(dog.breeds!.first.breedGroup!,
                          style: AppTheme.s15w600
                              .copyWith(color: AppColors.white)),
                    ],
                  ),
                ),
              if (!(dog.breeds?.isEmpty ?? true) &&
                  (dog.breeds?.first.temperament != null))
                Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(dog.breeds!.first.temperament!,
                        style:
                            AppTheme.s15w600.copyWith(color: AppColors.white)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
