import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/unprocessable_entity_exception.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/repositories/animals_details_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetAnimalsResponseModel
    implements UseCase<AnimalsList, AnimalsListParams> {
  final AnimalsDetailsRepository repository;

  GetAnimalsResponseModel(this.repository);

  @override
  Future<AnimalsList> call(AnimalsListParams params) async {
    if (params.height != null && params.height! < 0) {
      throw UnProcessableEntity();
    }
    if (params.page != null && params.page! < 0) {
      throw UnProcessableEntity();
    }
    if (params.limit != null && params.limit! < 0) {
      throw UnProcessableEntity();
    }
    final response = await repository.getAnimalsResponse(params);
    if (response.animals.length != params.limit) {
      throw UnProcessableEntity();
    }
    return response;
  }
}
