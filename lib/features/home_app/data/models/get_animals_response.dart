import 'package:algooru_flutter_assessment/core/api/core_models/general_response_model.dart';

import 'animal.dart';

class AnimalsResponseModel extends GeneralResponseModel {
  List<Animal> animals = [];

  AnimalsResponseModel.fromJson(List<dynamic> animals) {
    for (dynamic animal in animals) {
      this.animals.add(Animal.fromJson(animal));
    }
  }
}

