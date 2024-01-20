import 'package:algooru_flutter_assessment/core/boilerplate/base_async_widget.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/manager/cats_list_provider/get_cats_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/widgets/cats/cat_cards_grid.dart';
import 'package:flutter/material.dart';

import '../../data/models/animal_model.dart';
import '../../domain/entities/animal.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAsyncWidget<List<Animal>>(
      mockData: List.generate(10, (index) => AnimalModel()),
      builder: (model) => CatCardsGrid(cats: model),
      providerListenable: getCatsListProvider,
    );
  }
}
