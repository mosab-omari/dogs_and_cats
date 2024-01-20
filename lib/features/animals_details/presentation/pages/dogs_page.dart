import 'package:algooru_flutter_assessment/core/boilerplate/base_async_widget.dart';
import 'package:flutter/material.dart';

import '../../data/models/animal_model.dart';
import '../../domain/entities/animal.dart';
import '../manager/dogs_list_provider/get_dogs_list.dart';
import '../widgets/dogs/dog_cards_list.dart';

class DogsPage extends StatelessWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAsyncWidget<List<Animal>>(
        mockData: List.generate(5, (index) => AnimalModel()),
        builder: (data) => DogsCardsList(
              dogs: data,
            ),
        providerListenable: getDogsListProvider);
  }
}
