import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/dogs_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/repositories/animals_details_repository_impl.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/use_cases/get_animals_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/api/client/client.dart';

part 'get_dogs_list.g.dart';


int limit = 1;

@riverpod
Future<AnimalsList> getDogsList(GetDogsListRef ref) async {
  final response = await GetAnimalsResponseModel(AnimalDetailsRepositoryImpl(
          remoteDataSource:
              DogsDetailsRemoteDataSource(client: Client<AnimalsListModel>())))
      .call(AnimalsListParams(limit: limit));
  return AnimalsList(animals: response.animals);
}
