import 'package:algooru_flutter_assessment/core/api/core_models/network/remote_data_source_params.dart';
import 'package:algooru_flutter_assessment/core/api/client/client.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_config.dart';
import '../models/animals_list_model.dart';

enum AnimalType {
  cat,
  dog;
}

abstract class AnimalsDetailsRemoteDataSource {
  Future<AnimalsListModel> getAnimalsResponse(
      RemoteDataSourceParams networkRequestParams);
}

abstract class AnimalDetailsRemoteDataSourceImpl
    implements AnimalsDetailsRemoteDataSource {
  final Client<AnimalsListModel> client;
  @protected
  final bool withBaseUrl;

  @protected
  String get apiKey;

  @protected
  String get baseUrl;

  const AnimalDetailsRemoteDataSourceImpl({
    required this.client,
    this.withBaseUrl = true,
  });

  @override
  Future<AnimalsListModel> getAnimalsResponse(
      RemoteDataSourceParams networkRequestParams);
}

