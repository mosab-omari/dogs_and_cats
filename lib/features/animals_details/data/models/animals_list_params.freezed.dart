// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_list_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalsListParams _$AnimalsListParamsFromJson(Map<String, dynamic> json) {
  return _AnimalsListParams.fromJson(json);
}

/// @nodoc
mixin _$AnimalsListParams {
  int? get limit => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_breeds')
  int? get hasBreeds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimalsListParamsCopyWith<AnimalsListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsListParamsCopyWith<$Res> {
  factory $AnimalsListParamsCopyWith(
          AnimalsListParams value, $Res Function(AnimalsListParams) then) =
      _$AnimalsListParamsCopyWithImpl<$Res, AnimalsListParams>;
  @useResult
  $Res call(
      {int? limit,
      int? height,
      int? page,
      String? order,
      @JsonKey(name: 'has_breeds') int? hasBreeds});
}

/// @nodoc
class _$AnimalsListParamsCopyWithImpl<$Res, $Val extends AnimalsListParams>
    implements $AnimalsListParamsCopyWith<$Res> {
  _$AnimalsListParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? height = freezed,
    Object? page = freezed,
    Object? order = freezed,
    Object? hasBreeds = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBreeds: freezed == hasBreeds
          ? _value.hasBreeds
          : hasBreeds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalsListParamsImplCopyWith<$Res>
    implements $AnimalsListParamsCopyWith<$Res> {
  factory _$$AnimalsListParamsImplCopyWith(_$AnimalsListParamsImpl value,
          $Res Function(_$AnimalsListParamsImpl) then) =
      __$$AnimalsListParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? limit,
      int? height,
      int? page,
      String? order,
      @JsonKey(name: 'has_breeds') int? hasBreeds});
}

/// @nodoc
class __$$AnimalsListParamsImplCopyWithImpl<$Res>
    extends _$AnimalsListParamsCopyWithImpl<$Res, _$AnimalsListParamsImpl>
    implements _$$AnimalsListParamsImplCopyWith<$Res> {
  __$$AnimalsListParamsImplCopyWithImpl(_$AnimalsListParamsImpl _value,
      $Res Function(_$AnimalsListParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? height = freezed,
    Object? page = freezed,
    Object? order = freezed,
    Object? hasBreeds = freezed,
  }) {
    return _then(_$AnimalsListParamsImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBreeds: freezed == hasBreeds
          ? _value.hasBreeds
          : hasBreeds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$AnimalsListParamsImpl extends _AnimalsListParams {
  _$AnimalsListParamsImpl(
      {this.limit,
      this.height,
      this.page,
      this.order,
      @JsonKey(name: 'has_breeds') this.hasBreeds})
      : super._();

  factory _$AnimalsListParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalsListParamsImplFromJson(json);

  @override
  final int? limit;
  @override
  final int? height;
  @override
  final int? page;
  @override
  final String? order;
  @override
  @JsonKey(name: 'has_breeds')
  final int? hasBreeds;

  @override
  String toString() {
    return 'AnimalsListParams(limit: $limit, height: $height, page: $page, order: $order, hasBreeds: $hasBreeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalsListParamsImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hasBreeds, hasBreeds) ||
                other.hasBreeds == hasBreeds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, height, page, order, hasBreeds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalsListParamsImplCopyWith<_$AnimalsListParamsImpl> get copyWith =>
      __$$AnimalsListParamsImplCopyWithImpl<_$AnimalsListParamsImpl>(
          this, _$identity);
}

abstract class _AnimalsListParams extends AnimalsListParams {
  factory _AnimalsListParams(
          {final int? limit,
          final int? height,
          final int? page,
          final String? order,
          @JsonKey(name: 'has_breeds') final int? hasBreeds}) =
      _$AnimalsListParamsImpl;
  _AnimalsListParams._() : super._();

  factory _AnimalsListParams.fromJson(Map<String, dynamic> json) =
      _$AnimalsListParamsImpl.fromJson;

  @override
  int? get limit;
  @override
  int? get height;
  @override
  int? get page;
  @override
  String? get order;
  @override
  @JsonKey(name: 'has_breeds')
  int? get hasBreeds;
  @override
  @JsonKey(ignore: true)
  _$$AnimalsListParamsImplCopyWith<_$AnimalsListParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
