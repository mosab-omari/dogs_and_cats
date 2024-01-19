
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/colors/app_colors.dart';
import '../../../../project_core/widgets/button/app_button.dart';
import '../../../../project_core/widgets/button/button_text.dart';
import '../../data/models/animal.dart';
import '../../domain/repositories/dogs_list.dart';
import '../widgets/dogs_page/dog_cards_list.dart';

class DogsPage extends ConsumerWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animals = ref.watch(getDogsListProvider);

    return animals.when(
      skipLoadingOnRefresh: false,
      data: (data) => RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(getDogsListProvider);
        },
        child: DogsCardsList(
          dogs: data,
        ),
      ),
      error: (error, stackTrace) {
        print(error);
        print(stackTrace);
        return Column(
          children: [
            const Spacer(),
            const Text('An error has occurred'),
            const Gap(12),
            AppButton(
              width: 150,
              text: const ButtonText(
                text: 'Refresh',
              ),
              onTap: () {
                ref.refresh(getDogsListProvider);
              },
            ),
            const Spacer(),
          ],
        );
      },
      loading: () => Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerOther,
          child: DogsCardsList(dogs: List.generate(5, (index) => Animal()))),
    );
  }
}
