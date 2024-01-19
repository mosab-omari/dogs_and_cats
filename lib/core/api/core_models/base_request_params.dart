import '../data_source/repo.dart';
import 'general_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_request_params.freezed.dart';

@Freezed()
class BaseRequestParams<Model> with _$BaseRequestParams<Model> {
  BaseRequestParams._();

  factory BaseRequestParams({
    required String url,
    required Model Function(List<dynamic> json)? converter,
    required ApiMethod apiMethod,
    GeneralRequestModel? data,
    String? apiKey,
    GeneralRequestModel? queryParameters,
    @Default(false) bool withAuthentication,
    @Default(false) bool withCaching,
    @Default(false) bool uploadNotification,
    @Default(false) bool downloadNotification,
    @Default(false) bool withFiles,
  }) = _BaseRequestParams;
}
