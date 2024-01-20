import 'package:algooru_flutter_assessment/core/api/core_models/network/remote_data_source_params.dart';
import 'package:algooru_flutter_assessment/core/api/client/client.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/animals_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart';

import '../../domain/repositories/animals_details_repository.dart';

class AnimalDetailsRepositoryImpl implements AnimalsDetailsRepository {
  final AnimalsDetailsRemoteDataSource remoteDataSource;

  AnimalDetailsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AnimalsList> getAnimalsResponse(AnimalsListParams params) async {
    final response = await remoteDataSource.getAnimalsResponse(
        RemoteDataSourceParams(
            url: 'search/',
            queryParameters: params,
            converter: AnimalsListModel.fromJson,
            apiMethod: ApiMethod.get));
    return response;
  }
}
