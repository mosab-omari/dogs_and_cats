import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal_weight.dart';

class AnimalWeightModel extends AnimalWeight {
  AnimalWeightModel({super.imperial, super.metric});

  AnimalWeightModel.fromJson(Map<String, dynamic> json) {
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
