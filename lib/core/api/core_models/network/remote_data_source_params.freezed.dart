// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_data_source_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteDataSourceParams<Model> {
  String get url => throw _privateConstructorUsedError;
  Model Function(List<dynamic>)? get converter =>
      throw _privateConstructorUsedError;
  ApiMethod get apiMethod => throw _privateConstructorUsedError;
  RemoteDataSourceRequestModel? get data => throw _privateConstructorUsedError;
  String? get apiKey => throw _privateConstructorUsedError;
  RemoteDataSourceRequestModel? get queryParameters =>
      throw _privateConstructorUsedError;
  bool get withAuthentication => throw _privateConstructorUsedError;
  bool get withCaching => throw _privateConstructorUsedError;
  bool get uploadNotification => throw _privateConstructorUsedError;
  bool get downloadNotification => throw _privateConstructorUsedError;
  bool get withFiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteDataSourceParamsCopyWith<Model, RemoteDataSourceParams<Model>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteDataSourceParamsCopyWith<Model, $Res> {
  factory $RemoteDataSourceParamsCopyWith(RemoteDataSourceParams<Model> value,
          $Res Function(RemoteDataSourceParams<Model>) then) =
      _$RemoteDataSourceParamsCopyWithImpl<Model, $Res,
          RemoteDataSourceParams<Model>>;
  @useResult
  $Res call(
      {String url,
      Model Function(List<dynamic>)? converter,
      ApiMethod apiMethod,
      RemoteDataSourceRequestModel? data,
      String? apiKey,
      RemoteDataSourceRequestModel? queryParameters,
      bool withAuthentication,
      bool withCaching,
      bool uploadNotification,
      bool downloadNotification,
      bool withFiles});
}

/// @nodoc
class _$RemoteDataSourceParamsCopyWithImpl<Model, $Res,
        $Val extends RemoteDataSourceParams<Model>>
    implements $RemoteDataSourceParamsCopyWith<Model, $Res> {
  _$RemoteDataSourceParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? converter = freezed,
    Object? apiMethod = null,
    Object? data = freezed,
    Object? apiKey = freezed,
    Object? queryParameters = freezed,
    Object? withAuthentication = null,
    Object? withCaching = null,
    Object? uploadNotification = null,
    Object? downloadNotification = null,
    Object? withFiles = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      converter: freezed == converter
          ? _value.converter
          : converter // ignore: cast_nullable_to_non_nullable
              as Model Function(List<dynamic>)?,
      apiMethod: null == apiMethod
          ? _value.apiMethod
          : apiMethod // ignore: cast_nullable_to_non_nullable
              as ApiMethod,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemoteDataSourceRequestModel?,
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as RemoteDataSourceRequestModel?,
      withAuthentication: null == withAuthentication
          ? _value.withAuthentication
          : withAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      withCaching: null == withCaching
          ? _value.withCaching
          : withCaching // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadNotification: null == uploadNotification
          ? _value.uploadNotification
          : uploadNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadNotification: null == downloadNotification
          ? _value.downloadNotification
          : downloadNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRequestParamsImplCopyWith<Model, $Res>
    implements $RemoteDataSourceParamsCopyWith<Model, $Res> {
  factory _$$BaseRequestParamsImplCopyWith(_$BaseRequestParamsImpl<Model> value,
          $Res Function(_$BaseRequestParamsImpl<Model>) then) =
      __$$BaseRequestParamsImplCopyWithImpl<Model, $Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Model Function(List<dynamic>)? converter,
      ApiMethod apiMethod,
      RemoteDataSourceRequestModel? data,
      String? apiKey,
      RemoteDataSourceRequestModel? queryParameters,
      bool withAuthentication,
      bool withCaching,
      bool uploadNotification,
      bool downloadNotification,
      bool withFiles});
}

/// @nodoc
class __$$BaseRequestParamsImplCopyWithImpl<Model, $Res>
    extends _$RemoteDataSourceParamsCopyWithImpl<Model, $Res,
        _$BaseRequestParamsImpl<Model>>
    implements _$$BaseRequestParamsImplCopyWith<Model, $Res> {
  __$$BaseRequestParamsImplCopyWithImpl(_$BaseRequestParamsImpl<Model> _value,
      $Res Function(_$BaseRequestParamsImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? converter = freezed,
    Object? apiMethod = null,
    Object? data = freezed,
    Object? apiKey = freezed,
    Object? queryParameters = freezed,
    Object? withAuthentication = null,
    Object? withCaching = null,
    Object? uploadNotification = null,
    Object? downloadNotification = null,
    Object? withFiles = null,
  }) {
    return _then(_$BaseRequestParamsImpl<Model>(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      converter: freezed == converter
          ? _value.converter
          : converter // ignore: cast_nullable_to_non_nullable
              as Model Function(List<dynamic>)?,
      apiMethod: null == apiMethod
          ? _value.apiMethod
          : apiMethod // ignore: cast_nullable_to_non_nullable
              as ApiMethod,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemoteDataSourceRequestModel?,
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      queryParameters: freezed == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as RemoteDataSourceRequestModel?,
      withAuthentication: null == withAuthentication
          ? _value.withAuthentication
          : withAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      withCaching: null == withCaching
          ? _value.withCaching
          : withCaching // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadNotification: null == uploadNotification
          ? _value.uploadNotification
          : uploadNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadNotification: null == downloadNotification
          ? _value.downloadNotification
          : downloadNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      withFiles: null == withFiles
          ? _value.withFiles
          : withFiles // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BaseRequestParamsImpl<Model> extends _BaseRequestParams<Model> {
  _$BaseRequestParamsImpl(
      {required this.url,
      required this.converter,
      required this.apiMethod,
      this.data,
      this.apiKey,
      this.queryParameters,
      this.withAuthentication = false,
      this.withCaching = false,
      this.uploadNotification = false,
      this.downloadNotification = false,
      this.withFiles = false})
      : super._();

  @override
  final String url;
  @override
  final Model Function(List<dynamic>)? converter;
  @override
  final ApiMethod apiMethod;
  @override
  final RemoteDataSourceRequestModel? data;
  @override
  final String? apiKey;
  @override
  final RemoteDataSourceRequestModel? queryParameters;
  @override
  @JsonKey()
  final bool withAuthentication;
  @override
  @JsonKey()
  final bool withCaching;
  @override
  @JsonKey()
  final bool uploadNotification;
  @override
  @JsonKey()
  final bool downloadNotification;
  @override
  @JsonKey()
  final bool withFiles;

  @override
  String toString() {
    return 'RemoteDataSourceParams<$Model>(url: $url, converter: $converter, apiMethod: $apiMethod, data: $data, apiKey: $apiKey, queryParameters: $queryParameters, withAuthentication: $withAuthentication, withCaching: $withCaching, uploadNotification: $uploadNotification, downloadNotification: $downloadNotification, withFiles: $withFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRequestParamsImpl<Model> &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.converter, converter) ||
                other.converter == converter) &&
            (identical(other.apiMethod, apiMethod) ||
                other.apiMethod == apiMethod) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.queryParameters, queryParameters) ||
                other.queryParameters == queryParameters) &&
            (identical(other.withAuthentication, withAuthentication) ||
                other.withAuthentication == withAuthentication) &&
            (identical(other.withCaching, withCaching) ||
                other.withCaching == withCaching) &&
            (identical(other.uploadNotification, uploadNotification) ||
                other.uploadNotification == uploadNotification) &&
            (identical(other.downloadNotification, downloadNotification) ||
                other.downloadNotification == downloadNotification) &&
            (identical(other.withFiles, withFiles) ||
                other.withFiles == withFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      converter,
      apiMethod,
      data,
      apiKey,
      queryParameters,
      withAuthentication,
      withCaching,
      uploadNotification,
      downloadNotification,
      withFiles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRequestParamsImplCopyWith<Model, _$BaseRequestParamsImpl<Model>>
      get copyWith => __$$BaseRequestParamsImplCopyWithImpl<Model,
          _$BaseRequestParamsImpl<Model>>(this, _$identity);
}

abstract class _BaseRequestParams<Model> extends RemoteDataSourceParams<Model> {
  factory _BaseRequestParams(
      {required final String url,
      required final Model Function(List<dynamic>)? converter,
      required final ApiMethod apiMethod,
      final RemoteDataSourceRequestModel? data,
      final String? apiKey,
      final RemoteDataSourceRequestModel? queryParameters,
      final bool withAuthentication,
      final bool withCaching,
      final bool uploadNotification,
      final bool downloadNotification,
      final bool withFiles}) = _$BaseRequestParamsImpl<Model>;
  _BaseRequestParams._() : super._();

  @override
  String get url;
  @override
  Model Function(List<dynamic>)? get converter;
  @override
  ApiMethod get apiMethod;
  @override
  RemoteDataSourceRequestModel? get data;
  @override
  String? get apiKey;
  @override
  RemoteDataSourceRequestModel? get queryParameters;
  @override
  bool get withAuthentication;
  @override
  bool get withCaching;
  @override
  bool get uploadNotification;
  @override
  bool get downloadNotification;
  @override
  bool get withFiles;
  @override
  @JsonKey(ignore: true)
  _$$BaseRequestParamsImplCopyWith<Model, _$BaseRequestParamsImpl<Model>>
      get copyWith => throw _privateConstructorUsedError;
}
