import 'package:algooru_flutter_assessment/core/api/core_models/base_request_params.dart';
import 'package:algooru_flutter_assessment/core/api/data_source/repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import '../../config/app_config.dart';
import '../core_models/general_response_model.dart';

abstract class CatRepo {
  static const String _baseUrl = 'https://api.thecatapi.com/v1/images/';
  static final String _apiKey = AppConfig.instance.catAPIKey;

  CatRepo._();

  static Future
      request<Model extends GeneralResponseModel>(
          {required BaseRequestParams params, bool withBaseUrl = true}) async {
    return Repository.request(params.copyWith(
      url: withBaseUrl ? '$_baseUrl${params.url}' : params.url,
      apiKey: _apiKey,
    ));
  }
}
