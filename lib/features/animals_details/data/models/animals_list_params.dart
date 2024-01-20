import 'package:algooru_flutter_assessment/core/api/core_models/network/remote_data_source_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animals_list_params.freezed.dart';

part 'animals_list_params.g.dart';

@Freezed(fromJson: true, toJson: true)
sealed class AnimalsListParams extends RemoteDataSourceRequestModel
    with _$AnimalsListParams {
  AnimalsListParams._();


  factory AnimalsListParams(
      {int? limit,
      int? height,
      int? page,
      String? order,
      @JsonKey(name: 'has_breeds') int? hasBreeds}) = _AnimalsListParams;

  fromJson(Map<String, dynamic> json) => _$AnimalsListParamsFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['limit'] = limit;
    data['height'] = height;
    data['page'] = page;
    data['order'] = order;
    data['has_breeds'] = hasBreeds;
    return data..removeWhere((key, value) => value == null);
  }
}
