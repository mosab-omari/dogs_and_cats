import 'package:algooru_flutter_assessment/core/utils/navigation.dart';
import 'package:algooru_flutter_assessment/core/widgets/animated/animated_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../data/models/animal_model.dart';
import '../../../domain/entities/animal.dart';
import 'cat_card.dart';

class CatCardsGrid extends StatelessWidget {
  const CatCardsGrid({super.key, required this.cats});

  final List<Animal> cats;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
        itemBuilder: (context, index) {
          return AnimatedGridItem(
            index: index,
            child: CatCard(
              onTap: () => Navigation.viewImages(
                initialIndex: index,
                  context: context,
                  items: cats
                      .map((e) => KeyValueModel(key: e.id, value: e.url))
                      .toList()),
              cat: cats[index],
            ),
          );
        },
        itemCount: cats.length,
      ),
    );
  }
}
