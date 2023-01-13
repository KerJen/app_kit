// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDescription _$WeatherDescriptionFromJson(Map<String, dynamic> json) {
  return _WeatherDescription.fromJson(json);
}

/// @nodoc
mixin _$WeatherDescription {
  @JsonKey(name: "main")
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDescriptionCopyWith<WeatherDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDescriptionCopyWith<$Res> {
  factory $WeatherDescriptionCopyWith(
          WeatherDescription value, $Res Function(WeatherDescription) then) =
      _$WeatherDescriptionCopyWithImpl<$Res, WeatherDescription>;
  @useResult
  $Res call({@JsonKey(name: "main") String status, String description});
}

/// @nodoc
class _$WeatherDescriptionCopyWithImpl<$Res, $Val extends WeatherDescription>
    implements $WeatherDescriptionCopyWith<$Res> {
  _$WeatherDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDescriptionCopyWith<$Res>
    implements $WeatherDescriptionCopyWith<$Res> {
  factory _$$_WeatherDescriptionCopyWith(_$_WeatherDescription value,
          $Res Function(_$_WeatherDescription) then) =
      __$$_WeatherDescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "main") String status, String description});
}

/// @nodoc
class __$$_WeatherDescriptionCopyWithImpl<$Res>
    extends _$WeatherDescriptionCopyWithImpl<$Res, _$_WeatherDescription>
    implements _$$_WeatherDescriptionCopyWith<$Res> {
  __$$_WeatherDescriptionCopyWithImpl(
      _$_WeatherDescription _value, $Res Function(_$_WeatherDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? description = null,
  }) {
    return _then(_$_WeatherDescription(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDescription implements _WeatherDescription {
  const _$_WeatherDescription(
      {@JsonKey(name: "main") required this.status, required this.description});

  factory _$_WeatherDescription.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDescriptionFromJson(json);

  @override
  @JsonKey(name: "main")
  final String status;
  @override
  final String description;

  @override
  String toString() {
    return 'WeatherDescription(status: $status, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDescription &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDescriptionCopyWith<_$_WeatherDescription> get copyWith =>
      __$$_WeatherDescriptionCopyWithImpl<_$_WeatherDescription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDescriptionToJson(
      this,
    );
  }
}

abstract class _WeatherDescription implements WeatherDescription {
  const factory _WeatherDescription(
      {@JsonKey(name: "main") required final String status,
      required final String description}) = _$_WeatherDescription;

  factory _WeatherDescription.fromJson(Map<String, dynamic> json) =
      _$_WeatherDescription.fromJson;

  @override
  @JsonKey(name: "main")
  String get status;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDescriptionCopyWith<_$_WeatherDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
