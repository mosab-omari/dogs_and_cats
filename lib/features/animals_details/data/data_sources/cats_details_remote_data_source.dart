import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/animals_details_remote_data_source.dart';

import '../../../../core/api/core_models/network/remote_data_source_params.dart';
import '../../../../core/config/app_config.dart';
import '../models/animals_list_model.dart';

class CatsDetailsRemoteDataSource extends AnimalDetailsRemoteDataSourceImpl {
  CatsDetailsRemoteDataSource({required super.client, super.withBaseUrl});

  @override
  final String baseUrl = 'https://api.thecatapi.com/v1/images/';

  @override
  final String apiKey = AppConfig.instance.catAPIKey;

  @override
  Future<AnimalsListModel> getAnimalsResponse(
      RemoteDataSourceParams networkRequestParams) {
    return client.request(networkRequestParams.copyWith(
      url: withBaseUrl
          ? '$baseUrl${networkRequestParams.url}'
          : networkRequestParams.url,
      apiKey: apiKey,
    ));
  }
}
