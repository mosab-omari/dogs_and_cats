// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_list_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalsListParamsImpl _$$AnimalsListParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimalsListParamsImpl(
      limit: json['limit'] as int?,
      height: json['height'] as int?,
      page: json['page'] as int?,
      order: json['order'] as String?,
      hasBreeds: json['has_breeds'] as int?,
    );

Map<String, dynamic> _$$AnimalsListParamsImplToJson(
        _$AnimalsListParamsImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'height': instance.height,
      'page': instance.page,
      'order': instance.order,
      'has_breeds': instance.hasBreeds,
    };
