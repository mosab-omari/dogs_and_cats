import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/animals_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/cats_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/repositories/animals_details_repository_impl.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/use_cases/get_animals_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/api/client/client.dart';

part 'get_cats_list.g.dart';

@riverpod
Future<List<Animal>> getCatsList(GetCatsListRef ref) async {
  final response = await GetAnimalsResponseModel(AnimalDetailsRepositoryImpl(
          remoteDataSource:
              CatsDetailsRemoteDataSource(client: Client<AnimalsListModel>())))
      .call(AnimalsDetailsParams(limit: 10));
  return response.animals;
}