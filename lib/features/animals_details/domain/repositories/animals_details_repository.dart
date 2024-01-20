import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/server_exception.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';

abstract class AnimalsDetailsRepository {
  Future<AnimalsListModel> getAnimalsResponse(
      AnimalsDetailsParams params);
}
