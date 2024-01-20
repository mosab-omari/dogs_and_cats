import 'package:algooru_flutter_assessment/features/animals_details/data/models/animal_weight_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal_breed.dart';


class AnimalBreedModel extends AnimalBreed {
  AnimalBreedModel(
      {super.weight,
      super.height,
      super.id,
      super.name,
      super.bredFor,
      super.breedGroup,
      super.lifeSpan,
      super.history,
      super.temperament,
      super.referenceImageId});

  factory AnimalBreedModel.fromJson(Map<String, dynamic> json) {
    return AnimalBreedModel(
      weight: json['weight'] != null
          ? AnimalWeightModel.fromJson(json['weight'])
          : null,
      height: json['height'] != null
          ? AnimalWeightModel.fromJson(json['height'])
          : null,
      id: json['id'],
      name: json['name'],
      bredFor: json['bred_for'],
      lifeSpan: json['life_span'],
      history: json['history'],
      temperament: json['temperament'],
      referenceImageId: json['reference_image_id'],
      breedGroup: json['breed_group'],
    );
  }
}

class Weight {
  String? imperial;
  String? metric;

  Weight({this.imperial, this.metric});

  Weight.fromJson(Map<String, dynamic> json) {
    imperial = json['imperial'];
    metric = json['metric'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imperial'] = imperial;
    data['metric'] = metric;
    return data;
  }
}
