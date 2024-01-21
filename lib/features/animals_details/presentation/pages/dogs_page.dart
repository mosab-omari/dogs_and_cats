import 'package:algooru_flutter_assessment/core/boilerplate/base_async_widget.dart';
import 'package:algooru_flutter_assessment/core/widgets/animated/confetti_animated_widget.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/animal_model.dart';
import '../../domain/entities/animal.dart';
import '../manager/dogs_list_provider/get_dogs_list.dart';
import '../widgets/dogs/dog_cards_list.dart';

class DogsPage extends ConsumerWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConfettiAnimatedWidget(
      builder: (p0) => AppAsyncWidget<AnimalsList>(
          skipLoadingOnRefresh: false,
          mockData:
              AnimalsList(animals: List.generate(5, (index) => AnimalModel())),
          builder: (data) {
            return DogsCardsList(
              onClickMe: () async {
                if (limit == 1) {
                  limit = 5;
                } else {
                  limit = 1;
                }

                ref.invalidate(getDogsListProvider);
                await ref.refresh(getDogsListProvider.future);
                p0.play();
              },
              dogs: data.animals,
            );
          },
          providerListenable: getDogsListProvider),
    );
  }
}
