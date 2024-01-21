import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal_breed.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal_weight.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/widgets/dogs/dog_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('dog card test: all icons & texts are shown',
      (WidgetTester tester) async {
    await tester.pumpWidget(DogCard(
        dog: Animal(breeds: [
      AnimalBreed(
        temperament: 'HHH',
        breedGroup: 'Sport',
        height: AnimalWeight(imperial: '1-2', metric: '1-5'),
        weight: AnimalWeight(imperial: '1-2', metric: '1-5'),
      )
    ])));
    final temperamentFinder = find.text('HHH');
    final iconFinder = find.byIcon(Icons.height);
    final weightFinder = find.byIcon(Icons.monitor_weight);

    expect(iconFinder, findsOneWidget);
    expect(weightFinder, findsOneWidget);
    expect(temperamentFinder, findsOneWidget);
  });

  testWidgets(
      'dog card test: height and width icon should not exist if no breedGroup assigned',
      (WidgetTester tester) async {
    await tester.pumpWidget(DogCard(
        dog: Animal(breeds: [
      AnimalBreed(
        temperament: 'HHH',
        // breedGroup: 'Sport',
        height: AnimalWeight(imperial: '1-2', metric: '1-5'),
        weight: AnimalWeight(imperial: '1-2', metric: '1-5'),
      )
    ])));
    final temperamentFinder = find.text('HHH');
    final iconFinder = find.byIcon(Icons.height);
    final weightFinder = find.byIcon(Icons.monitor_weight);

    expect(iconFinder, findsNothing);
    expect(weightFinder, findsNothing);
    expect(temperamentFinder, findsOneWidget);
  });
}
