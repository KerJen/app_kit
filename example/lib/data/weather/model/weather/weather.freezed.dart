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

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  @JsonKey(name: "weather", fromJson: Weather.fromDescription)
  WeatherDescription get description => throw _privateConstructorUsedError;
  @JsonKey(readValue: Weather.readTemp)
  num get temp => throw _privateConstructorUsedError;
  @JsonKey(readValue: Weather.readTempMin)
  num get tempMin => throw _privateConstructorUsedError;
  @JsonKey(readValue: Weather.readTempMax)
  num get tempMax => throw _privateConstructorUsedError;
  @JsonKey(readValue: Weather.readHumidity)
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {@JsonKey(name: "weather", fromJson: Weather.fromDescription)
          WeatherDescription description,
      @JsonKey(readValue: Weather.readTemp)
          num temp,
      @JsonKey(readValue: Weather.readTempMin)
          num tempMin,
      @JsonKey(readValue: Weather.readTempMax)
          num tempMax,
      @JsonKey(readValue: Weather.readHumidity)
          int humidity});

  $WeatherDescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as WeatherDescription,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as num,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as num,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDescriptionCopyWith<$Res> get description {
    return $WeatherDescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "weather", fromJson: Weather.fromDescription)
          WeatherDescription description,
      @JsonKey(readValue: Weather.readTemp)
          num temp,
      @JsonKey(readValue: Weather.readTempMin)
          num tempMin,
      @JsonKey(readValue: Weather.readTempMax)
          num tempMax,
      @JsonKey(readValue: Weather.readHumidity)
          int humidity});

  @override
  $WeatherDescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(_$_Weather(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as WeatherDescription,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as num,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
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
class _$_Weather implements _Weather {
  const _$_Weather(
      {@JsonKey(name: "weather", fromJson: Weather.fromDescription)
          required this.description,
      @JsonKey(readValue: Weather.readTemp)
          required this.temp,
      @JsonKey(readValue: Weather.readTempMin)
          required this.tempMin,
      @JsonKey(readValue: Weather.readTempMax)
          required this.tempMax,
      @JsonKey(readValue: Weather.readHumidity)
          required this.humidity});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  @JsonKey(name: "weather", fromJson: Weather.fromDescription)
  final WeatherDescription description;
  @override
  @JsonKey(readValue: Weather.readTemp)
  final num temp;
  @override
  @JsonKey(readValue: Weather.readTempMin)
  final num tempMin;
  @override
  @JsonKey(readValue: Weather.readTempMax)
  final num tempMax;
  @override
  @JsonKey(readValue: Weather.readHumidity)
  final int humidity;

  @override
  String toString() {
    return 'Weather(description: $description, temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, temp, tempMin, tempMax, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {@JsonKey(name: "weather", fromJson: Weather.fromDescription)
          required final WeatherDescription description,
      @JsonKey(readValue: Weather.readTemp)
          required final num temp,
      @JsonKey(readValue: Weather.readTempMin)
          required final num tempMin,
      @JsonKey(readValue: Weather.readTempMax)
          required final num tempMax,
      @JsonKey(readValue: Weather.readHumidity)
          required final int humidity}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  @JsonKey(name: "weather", fromJson: Weather.fromDescription)
  WeatherDescription get description;
  @override
  @JsonKey(readValue: Weather.readTemp)
  num get temp;
  @override
  @JsonKey(readValue: Weather.readTempMin)
  num get tempMin;
  @override
  @JsonKey(readValue: Weather.readTempMax)
  num get tempMax;
  @override
  @JsonKey(readValue: Weather.readHumidity)
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
