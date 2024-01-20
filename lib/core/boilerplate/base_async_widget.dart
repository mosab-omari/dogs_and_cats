import 'package:algooru_flutter_assessment/core/error/exceptions/repository_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import '../../features/animals_details/presentation/manager/cats_list_provider/get_cats_list.dart';
import '../../project_core/widgets/button/app_button.dart';
import '../../project_core/widgets/button/button_text.dart';
import '../constants/colors/app_colors.dart';

class AppAsyncWidget<Model> extends ConsumerWidget {
  const AppAsyncWidget(
      {super.key,
      this.mockData,
      this.withRefresh = true,
      required this.builder,
      required this.providerListenable});

  final bool withRefresh;
  final Widget Function(Model model) builder;
  final AutoDisposeFutureProvider<Model> providerListenable;
  final Model? mockData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(providerListenable);

    return asyncValue.when(
      skipLoadingOnRefresh: false,
      data: (data) {
        Widget child = builder(data);
        if (withRefresh) {
          child = RefreshIndicator(
              child: child,
              onRefresh: () async {
                ref.invalidate(providerListenable);
              });
        }
        return child;
      },
      error: (error, stackTrace) {
        error as RepoException;
        return Center(
          child: Column(
            children: [
              const Spacer(),
              Text(error.message),
              const Gap(12),
              AppButton(
                width: 150,
                text: const ButtonText(
                  text: 'Refresh',
                ),
                onTap: () async {
                  ref.refresh(getCatsListProvider);
                },
              ),
              const Spacer(),
            ],
          ),
        );
      },
      loading: () => Shimmer.fromColors(
        baseColor: AppColors.shimmerBase,
        highlightColor: AppColors.shimmerOther,
        child: mockData == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : builder(mockData!),
      ),
    );
  }
}
