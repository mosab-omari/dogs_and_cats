import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/cats_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/repositories/animals_details_repository_impl.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/use_cases/get_animals_response_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/api/client/client.dart';

part 'get_cats_list.g.dart';

int page = 0;
bool loading = false;
bool refresh = false;
List<Animal> animals = [];

@riverpod
Future<AnimalsList> getCatsList(GetCatsListRef ref) async {
  print('HABIBI');
  loading = true;
  EasyLoading.show(dismissOnTap: true);
  try {
    final response = await GetAnimalsResponseModel(AnimalDetailsRepositoryImpl(
            remoteDataSource: CatsDetailsRemoteDataSource(
                client: Client<AnimalsListModel>())))
        .call(AnimalsListParams(
      limit: 10,
      page: page++,
    ));
    EasyLoading.dismiss();
    if (refresh) {
      refresh = false;
    }
    animals.addAll(response.animals);
    loading = false;
    return AnimalsList(animals: animals);
  } catch (e) {
    EasyLoading.dismiss();
    rethrow;
  }
}
