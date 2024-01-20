import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';

import 'animal_breed_model.dart';

class AnimalModel extends Animal {
  AnimalModel({super.id, super.url, super.width, super.height, super.breeds});

  factory AnimalModel.fromJson(Map<String, dynamic> json) {
    final List<AnimalBreedModel> breeds = [];
    for (dynamic breed in json['breeds']) {
      breeds.add(AnimalBreedModel.fromJson(breed));
    }
    return AnimalModel(
      id: json['id'],
      url: json['url'],
      width: json['width'],
      height: json['height'],
      breeds: breeds,
    );
  }
}
