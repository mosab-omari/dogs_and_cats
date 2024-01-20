import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';

import 'animal_model.dart';

class AnimalsListModel extends AnimalsList {
  AnimalsListModel({required super.animals});

  factory AnimalsListModel.fromJson(List<dynamic> animalsList) {
    final List<AnimalModel> animals = [];
    for (dynamic animal in animalsList) {
      animals.add(AnimalModel.fromJson(animal));
    }
    return AnimalsListModel(animals: animals);
  }
}
