// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(readValue: WeatherModel.readStatus)
  String get status => throw _privateConstructorUsedError;
  @JsonKey(readValue: WeatherModel.readDescription)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(readValue: WeatherModel.readTemp)
  num get temp => throw _privateConstructorUsedError;
  @JsonKey(readValue: WeatherModel.readMinTemp)
  num get minTemp => throw _privateConstructorUsedError;
  @JsonKey(readValue: WeatherModel.readMaxTemp)
  num get maxTemp => throw _privateConstructorUsedError;
  @JsonKey(readValue: WeatherModel.readHumidity)
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(readValue: WeatherModel.readStatus) String status,
      @JsonKey(readValue: WeatherModel.readDescription) String description,
      @JsonKey(readValue: WeatherModel.readTemp) num temp,
      @JsonKey(readValue: WeatherModel.readMinTemp) num minTemp,
      @JsonKey(readValue: WeatherModel.readMaxTemp) num maxTemp,
      @JsonKey(readValue: WeatherModel.readHumidity) int humidity});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
    Object? temp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as num,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: WeatherModel.readStatus) String status,
      @JsonKey(readValue: WeatherModel.readDescription) String description,
      @JsonKey(readValue: WeatherModel.readTemp) num temp,
      @JsonKey(readValue: WeatherModel.readMinTemp) num minTemp,
      @JsonKey(readValue: WeatherModel.readMaxTemp) num maxTemp,
      @JsonKey(readValue: WeatherModel.readHumidity) int humidity});
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
    Object? temp = null,
    Object? minTemp = null,
    Object? maxTemp = null,
    Object? humidity = null,
  }) {
    return _then(_$_WeatherModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      minTemp: null == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as num,
      maxTemp: null == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel implements _WeatherModel {
  const _$_WeatherModel(
      {@JsonKey(readValue: WeatherModel.readStatus)
          required this.status,
      @JsonKey(readValue: WeatherModel.readDescription)
          required this.description,
      @JsonKey(readValue: WeatherModel.readTemp)
          required this.temp,
      @JsonKey(readValue: WeatherModel.readMinTemp)
          required this.minTemp,
      @JsonKey(readValue: WeatherModel.readMaxTemp)
          required this.maxTemp,
      @JsonKey(readValue: WeatherModel.readHumidity)
          required this.humidity});

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  @JsonKey(readValue: WeatherModel.readStatus)
  final String status;
  @override
  @JsonKey(readValue: WeatherModel.readDescription)
  final String description;
  @override
  @JsonKey(readValue: WeatherModel.readTemp)
  final num temp;
  @override
  @JsonKey(readValue: WeatherModel.readMinTemp)
  final num minTemp;
  @override
  @JsonKey(readValue: WeatherModel.readMaxTemp)
  final num maxTemp;
  @override
  @JsonKey(readValue: WeatherModel.readHumidity)
  final int humidity;

  @override
  String toString() {
    return 'WeatherModel(status: $status, description: $description, temp: $temp, minTemp: $minTemp, maxTemp: $maxTemp, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, description, temp, minTemp, maxTemp, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {@JsonKey(readValue: WeatherModel.readStatus)
          required final String status,
      @JsonKey(readValue: WeatherModel.readDescription)
          required final String description,
      @JsonKey(readValue: WeatherModel.readTemp)
          required final num temp,
      @JsonKey(readValue: WeatherModel.readMinTemp)
          required final num minTemp,
      @JsonKey(readValue: WeatherModel.readMaxTemp)
          required final num maxTemp,
      @JsonKey(readValue: WeatherModel.readHumidity)
          required final int humidity}) = _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  @JsonKey(readValue: WeatherModel.readStatus)
  String get status;
  @override
  @JsonKey(readValue: WeatherModel.readDescription)
  String get description;
  @override
  @JsonKey(readValue: WeatherModel.readTemp)
  num get temp;
  @override
  @JsonKey(readValue: WeatherModel.readMinTemp)
  num get minTemp;
  @override
  @JsonKey(readValue: WeatherModel.readMaxTemp)
  num get maxTemp;
  @override
  @JsonKey(readValue: WeatherModel.readHumidity)
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
