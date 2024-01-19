import 'dart:async';
import 'dart:math';

import 'package:algooru_flutter_assessment/core/animations/confetti_animated_widget.dart';
import 'package:algooru_flutter_assessment/core/widgets/animated/animated_list_item.dart';
import 'package:algooru_flutter_assessment/features/home_app/domain/repositories/dogs_list.dart';
import 'package:algooru_flutter_assessment/features/home_app/presentation/widgets/dogs_page/button.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/navigation.dart';
import '../../../data/models/animal.dart';
import 'dog_card.dart';

class DogsCardsList extends ConsumerWidget {
  const DogsCardsList({super.key, required this.dogs});

  final List<Animal> dogs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(getDogsListProvider);

    final StreamController<int> streamController = StreamController<int>();
    const BouncingScrollPhysics physics = BouncingScrollPhysics();
    final ScrollController scrollController = ScrollController(
      onAttach: (position) {
        streamController.sink.add(-1);
      },
    );

    provider.whenData((value) async {
      scrollController.addListener(() async {
        if (scrollController.offset >=
            scrollController.position.maxScrollExtent) {
          streamController.sink.add(1);
        } else if (scrollController.offset <
            scrollController.position.maxScrollExtent - 80) {
          streamController.sink.add(0);
        }
      });
    });
    return ConfettiAnimatedWidget(
      builder: (confettiController) => Column(
        children: [
          Expanded(
            child: AnimationLimiter(
              child: ListView.separated(
                shrinkWrap: true,
                physics: physics,
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 20.0),
                itemCount: dogs.length,
                itemBuilder: (context, index) => AnimatedListItem(
                  index: index,
                  child: DogCard(
                    onTap: () => Navigation.viewImages(
                        initialIndex: index,
                        context: context,
                        items: dogs
                            .map((e) => KeyValueModel(key: e.id, value: e.url))
                            .toList()),
                    dog: dogs[index],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const Gap(12),
              ),
            ),
          ),
          StreamBuilder<int>(
            stream: streamController.stream,
            builder: (context, snapshot) {
              switch (snapshot.data) {
                case -1:
                  return scrollController.offset >=
                          scrollController.position.maxScrollExtent
                      ? Column(
                          children: [
                            DogButton(
                              onTap: confettiController.play,
                            ),
                            const Gap(12),
                          ],
                        )
                      : const SizedBox();
                case 0:
                  return const SizedBox();
                case 1:
                  return Column(
                    children: [
                      DogButton(
                        onTap: confettiController.play,
                      ),
                      const Gap(12),
                    ],
                  );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
