import '../../config/app_config.dart';
import '../core_models/base_request_params.dart';
import '../core_models/general_response_model.dart';
import 'repo.dart';

abstract class DogRepo {
  static const String _baseUrl = 'https://api.thedogapi.com/v1/images/';
  static final String _apiKey = AppConfig.instance.dogAPIKey;

  DogRepo._();

  static Future
      request<Model extends GeneralResponseModel>(
          {required BaseRequestParams params, bool withBaseUrl = true}) {
    return Repository.request<Model>(params.copyWith(
      url: withBaseUrl ? '$_baseUrl${params.url}' : params.url,
      apiKey: _apiKey,
    ));
  }
}
