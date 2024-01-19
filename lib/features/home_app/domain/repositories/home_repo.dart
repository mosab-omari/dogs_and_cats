import 'package:algooru_flutter_assessment/core/api/core_models/base_request_params.dart';
import 'package:algooru_flutter_assessment/core/api/data_source/cat_repo.dart';
import 'package:algooru_flutter_assessment/core/api/data_source/dog_repo.dart';
import 'package:algooru_flutter_assessment/core/api/data_source/repo.dart';
import 'package:algooru_flutter_assessment/features/home_app/data/models/get_animals_response.dart';
import 'package:algooru_flutter_assessment/features/home_app/data/models/get_animals_params.dart';

import '../../data/models/animal.dart';

abstract class HomeRepo {
  HomeRepo._();

  static const String _baseUrl = 'search/';

  static Future<List<Animal>> getCatsList() async {
    final AnimalsResponseModel response =
        await CatRepo.request<AnimalsResponseModel>(
            params: BaseRequestParams(
                queryParameters: GetAnimalsParams(limit: 10),
                url: HomeRepo._baseUrl,
                converter: AnimalsResponseModel.fromJson,
                apiMethod: ApiMethod.get));
    return response.animals;
  }

  static Future<List<Animal>> getDogsList() async {
    final AnimalsResponseModel response =
        await DogRepo.request<AnimalsResponseModel>(
            params: BaseRequestParams(
                queryParameters: GetAnimalsParams(limit: 10),
                url: _baseUrl,
                converter: AnimalsResponseModel.fromJson,
                apiMethod: ApiMethod.get));
    return response.animals;
  }
}
