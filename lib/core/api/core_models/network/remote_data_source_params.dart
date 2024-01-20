import 'package:algooru_flutter_assessment/core/api/core_models/network/network_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../client/client.dart';

part 'remote_data_source_params.freezed.dart';

@Freezed()
class RemoteDataSourceParams<Model> with _$RemoteDataSourceParams<Model> {
  RemoteDataSourceParams._();

  factory RemoteDataSourceParams({
    required String url,
    required Model Function(List<dynamic> json)? converter,
    required ApiMethod apiMethod,
    NetworkRequestModel? data,
    String? apiKey,
    NetworkRequestModel? queryParameters,
    @Default(false) bool withAuthentication,
    @Default(false) bool withCaching,
    @Default(false) bool uploadNotification,
    @Default(false) bool downloadNotification,
    @Default(false) bool withFiles,
  }) = _BaseRequestParams;
}
