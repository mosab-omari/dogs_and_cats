import 'package:algooru_flutter_assessment/core/constants/colors/app_colors.dart';
import 'package:algooru_flutter_assessment/features/home_app/presentation/widgets/cats_page/cat_cards_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../project_core/widgets/button/app_button.dart';
import '../../../../project_core/widgets/button/button_text.dart';
import '../../data/models/animal.dart';
import '../../domain/repositories/cats_list.dart';

class CatsPage extends ConsumerWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animals = ref.watch(getCatsListProvider);

    return Scaffold(
      body: animals.when(
        skipLoadingOnRefresh: false,
        data: (data) => RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(getCatsListProvider);
            },
            child: CatCardsGrid(cats: data)),
        error: (error, stackTrace) {
          print(error);
          print(stackTrace);
          return Center(
            child: Column(
              children: [
                Spacer(),
                const Text('An error has occurred'),
                Gap(12),
                AppButton(
                  width: 150,
                  text: ButtonText(
                    text: 'Refresh',
                  ),
                  onTap: () async {
                    ref.refresh(getCatsListProvider);
                  },
                ),
                Spacer(),
              ],
            ),
          );
        },
        loading: () => Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerOther,
          child: CatCardsGrid(
            cats: List.generate(10, (index) => Animal()),
          ),
        ),
      ),
    );
  }
}
