import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/server_exception.dart';
import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/unauthorized_exception.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/repositories/animals_details_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetAnimalsResponseModel
    implements UseCase<AnimalsList, AnimalsDetailsParams> {
  final AnimalsDetailsRepository repository;

  GetAnimalsResponseModel(this.repository);

  @override
  Future<AnimalsList> call(
      AnimalsDetailsParams params) async {
    if(params.limit != null && params.limit! < 0) {
      throw UnauthorizedException();
    }
    final response = await repository.getAnimalsResponse(params);
    if(response.animals.length != params.limit){
      throw UnauthorizedException();
    }
    return response;
  }
}
