import 'package:algooru_flutter_assessment/core/error/exceptions/repository_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

import '../../project_core/widgets/button/app_button.dart';
import '../../project_core/widgets/button/button_text.dart';
import '../constants/colors/app_colors.dart';

class AppAsyncWidget<Model> extends ConsumerWidget {
  const AppAsyncWidget(
      {super.key,
      this.withRefresh = true,
      this.onRefresh,
      this.skipLoadingOnRefresh = false,
      this.mockData,
      required this.builder,
      required this.providerListenable});

  final Widget Function(Model model) builder;
  final Function()? onRefresh;
  final AutoDisposeFutureProvider<Model> providerListenable;
  final Model? mockData;
  final bool skipLoadingOnRefresh;
  final bool withRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(providerListenable);

    return asyncValue.when(
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      data: (data) {
        Widget child = builder(data);
        if (withRefresh) {
          child = RefreshIndicator(
              onRefresh: () async {
                if (onRefresh != null) onRefresh!();
                ref.invalidate(providerListenable);
                await ref.refresh(providerListenable.future);
              },
              child: child);
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
                  ref.invalidate(providerListenable);
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
            : builder(mockData as Model),
      ),
    );
  }
}
