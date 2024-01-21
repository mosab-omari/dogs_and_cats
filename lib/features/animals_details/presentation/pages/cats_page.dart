import 'package:algooru_flutter_assessment/core/boilerplate/base_async_widget.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/manager/cats_list_provider/get_cats_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/widgets/cats/cat_cards_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/animal_model.dart';

class CatsPage extends ConsumerWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        if (!loading) ref.refresh(getCatsListProvider);
      }
    });
    return AppAsyncWidget<AnimalsList>(
      onRefresh: () {
        refresh = true;
        animals = [];
        page = 0;
      },
      skipLoadingOnRefresh: !refresh,
      mockData:
          AnimalsList(animals: List.generate(10, (index) => AnimalModel())),
      builder: (response) => CatCardsGrid(
          cats: response.animals, scrollController: scrollController),
      providerListenable: getCatsListProvider,
    );
  }
}
