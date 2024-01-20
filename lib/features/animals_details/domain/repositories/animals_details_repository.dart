import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';

abstract class AnimalsDetailsRepository {
  Future<AnimalsList> getAnimalsResponse(
      AnimalsListParams params);
}
