import 'dart:developer';

import 'package:algooru_flutter_assessment/core/utils/connectivity_checker.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

import '../../constants/enums/storage_data.dart';
import '../../error/exceptions/connection_exceptions/connection_exception.dart';
import '../../error/exceptions/unknown_error_exception.dart';
import '../../utils/notifications/local_notifications_service.dart';
import '../../utils/shared_storage.dart';
import '../core_models/network/remote_data_source_params.dart';
import '../core_models/response_model.dart';

enum ApiMethod {
  post('POST'),
  get('GET'),
  put('PUT'),
  patch('PATCH'),
  delete('DELETE');

  final String value;

  const ApiMethod(this.value);
}

class Client<Model extends ResponseModel> {
  Future<Model> request(
      RemoteDataSourceParams params) async {
    if (!(await ConnectivityChecker().hasInternetConnection())) {
      throw NoInternetException();
    }
    try {
      String contentType = "application/json";
      String requestUrl = params.url;

      // String? token = await SharedStorage.token;
      Response response;
      Dio dio = Dio()
        ..interceptors.add(
          PrettyDioLogger(
              logPrint: (object) => log(object.toString(), name: 'Api'),
              request: true,
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: false,
              error: true,
              compact: true,
              maxWidth: 90),
        );
      if (params.withCaching) {
        var cacheDir = await getTemporaryDirectory();
        var cacheStore = HiveCacheStore(
          cacheDir.path,
          hiveBoxName: "algooru_assessment",
        );

        var customCacheOptions = CacheOptions(
          store: cacheStore,
          policy: CachePolicy.forceCache,
          priority: CachePriority.high,
          maxStale: const Duration(minutes: 5),
          hitCacheOnErrorExcept: [401, 404],
          keyBuilder: (request) {
            return request.uri.toString();
          },
          allowPostMethod: false,
        );
        dio.interceptors.add(DioCacheInterceptor(options: customCacheOptions));
      }

      response = await dio.request(requestUrl,
          data: params.withFiles
              ? FormData.fromMap(params.data?.toJson() ?? {})
              : params.data?.toJson(),
          queryParameters: params.queryParameters?.toJson(),
          onReceiveProgress: (received, total) {
        int progress = ((received / total) * 100).floor();
        if (params.uploadNotification) {
          if (progress == 100) {
            LocalNotificationService().showNotification(
                title: 'Uploaded Successfully',
                enableVibration: true,
                playSound: true);
          }
        } else if (params.downloadNotification) {
          if (progress == 100) {
            LocalNotificationService().showNotification(
              title: 'Downloaded Successfully',
              playSound: true,
              enableVibration: true,
            );
          } else {
            LocalNotificationService().showNotification(
                title: 'Downloaded Successfully',
                progress: progress,
                showProgress: true);
          }
        }
      }, onSendProgress: (sent, total) {
        if (params.uploadNotification) {
          int progress = ((sent / total) * 100).floor();
          if (progress == 100) {
            LocalNotificationService().showNotification(
                title: 'Uploading...',
                showProgress: true,
                ongoing: true,
                progress: 100,
                enableVibration: true,
                playSound: true);
          } else {
            LocalNotificationService().showNotification(
                title: 'Uploading',
                progress: progress,
                showProgress: true,
                ongoing: false,
                playSound: true,
                enableVibration: true,
                onlyAlertOnce: true);
          }
        }
      },
          options: Options(
            receiveTimeout: !params.withFiles
                ? const Duration(seconds: 15)
                : const Duration(minutes: 1),
            sendTimeout: !params.withFiles
                ? const Duration(seconds: 15)
                : const Duration(minutes: 1),
            method: params.apiMethod.value,
            headers: {
              if (params.apiKey != null) "x-api-key": params.apiKey,
              // if (params.withAuthentication && token != null)
              //   "Authorization": "Bearer $token",
              "Content-Type": contentType,
              "accept": "application/json",
              "Accept-Language":
                  SharedStorage.get<String>(StorageData.language),
              "Access-Control-Allow-Origin": "*",
            },
          ));
      return params.converter!(response.data);
    } on DioException catch (e, s) {
      log(e.toString(), name: 'repo_error', error: true);
      log(s.toString(), name: 'repo_error_trace', error: true);
      if (params.uploadNotification) {
        LocalNotificationService().showNotification(title: 'Upload Failed');
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ConnectionTimeoutException();
      }
      if (e.type == DioExceptionType.connectionError) {
        throw ConnectionErrorException();
      }
      if (e.type == DioExceptionType.unknown) {
        throw UnknownErrorException();
      }
      throw UnknownErrorException();
    }
  }
}
