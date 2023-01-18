// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  List<String> get cities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> cities) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> cities)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> cities)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({List<String> cities});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherLoadEventCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$_WeatherLoadEventCopyWith(
          _$_WeatherLoadEvent value, $Res Function(_$_WeatherLoadEvent) then) =
      __$$_WeatherLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> cities});
}

/// @nodoc
class __$$_WeatherLoadEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_WeatherLoadEvent>
    implements _$$_WeatherLoadEventCopyWith<$Res> {
  __$$_WeatherLoadEventCopyWithImpl(
      _$_WeatherLoadEvent _value, $Res Function(_$_WeatherLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$_WeatherLoadEvent(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_WeatherLoadEvent implements _WeatherLoadEvent {
  const _$_WeatherLoadEvent({required final List<String> cities})
      : _cities = cities;

  final List<String> _cities;
  @override
  List<String> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'WeatherEvent.load(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherLoadEvent &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherLoadEventCopyWith<_$_WeatherLoadEvent> get copyWith =>
      __$$_WeatherLoadEventCopyWithImpl<_$_WeatherLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> cities) load,
  }) {
    return load(cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> cities)? load,
  }) {
    return load?.call(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> cities)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadEvent implements WeatherEvent {
  const factory _WeatherLoadEvent({required final List<String> cities}) =
      _$_WeatherLoadEvent;

  @override
  List<String> get cities;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherLoadEventCopyWith<_$_WeatherLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<WeatherEntity> weathers) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<WeatherEntity> weathers)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<WeatherEntity> weathers)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherFailureState value) failure,
    required TResult Function(_WeatherResultState value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadingState value)? loading,
    TResult? Function(_WeatherFailureState value)? failure,
    TResult? Function(_WeatherResultState value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherFailureState value)? failure,
    TResult Function(_WeatherResultState value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeatherLoadingStateCopyWith<$Res> {
  factory _$$_WeatherLoadingStateCopyWith(_$_WeatherLoadingState value,
          $Res Function(_$_WeatherLoadingState) then) =
      __$$_WeatherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherLoadingStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherLoadingState>
    implements _$$_WeatherLoadingStateCopyWith<$Res> {
  __$$_WeatherLoadingStateCopyWithImpl(_$_WeatherLoadingState _value,
      $Res Function(_$_WeatherLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherLoadingState implements _WeatherLoadingState {
  const _$_WeatherLoadingState();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeatherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<WeatherEntity> weathers) result,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<WeatherEntity> weathers)? result,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<WeatherEntity> weathers)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherFailureState value) failure,
    required TResult Function(_WeatherResultState value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadingState value)? loading,
    TResult? Function(_WeatherFailureState value)? failure,
    TResult? Function(_WeatherResultState value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherFailureState value)? failure,
    TResult Function(_WeatherResultState value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoadingState implements WeatherState {
  const factory _WeatherLoadingState() = _$_WeatherLoadingState;
}

/// @nodoc
abstract class _$$_WeatherFailureStateCopyWith<$Res> {
  factory _$$_WeatherFailureStateCopyWith(_$_WeatherFailureState value,
          $Res Function(_$_WeatherFailureState) then) =
      __$$_WeatherFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_WeatherFailureStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherFailureState>
    implements _$$_WeatherFailureStateCopyWith<$Res> {
  __$$_WeatherFailureStateCopyWithImpl(_$_WeatherFailureState _value,
      $Res Function(_$_WeatherFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_WeatherFailureState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherFailureState implements _WeatherFailureState {
  const _$_WeatherFailureState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherFailureState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFailureStateCopyWith<_$_WeatherFailureState> get copyWith =>
      __$$_WeatherFailureStateCopyWithImpl<_$_WeatherFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<WeatherEntity> weathers) result,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<WeatherEntity> weathers)? result,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<WeatherEntity> weathers)? result,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherFailureState value) failure,
    required TResult Function(_WeatherResultState value) result,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadingState value)? loading,
    TResult? Function(_WeatherFailureState value)? failure,
    TResult? Function(_WeatherResultState value)? result,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherFailureState value)? failure,
    TResult Function(_WeatherResultState value)? result,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _WeatherFailureState implements WeatherState {
  const factory _WeatherFailureState({required final String message}) =
      _$_WeatherFailureState;

  String get message;
  @JsonKey(ignore: true)
  _$$_WeatherFailureStateCopyWith<_$_WeatherFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherResultStateCopyWith<$Res> {
  factory _$$_WeatherResultStateCopyWith(_$_WeatherResultState value,
          $Res Function(_$_WeatherResultState) then) =
      __$$_WeatherResultStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WeatherEntity> weathers});
}

/// @nodoc
class __$$_WeatherResultStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherResultState>
    implements _$$_WeatherResultStateCopyWith<$Res> {
  __$$_WeatherResultStateCopyWithImpl(
      _$_WeatherResultState _value, $Res Function(_$_WeatherResultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_$_WeatherResultState(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherEntity>,
    ));
  }
}

/// @nodoc

class _$_WeatherResultState implements _WeatherResultState {
  const _$_WeatherResultState({required final List<WeatherEntity> weathers})
      : _weathers = weathers;

  final List<WeatherEntity> _weathers;
  @override
  List<WeatherEntity> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  String toString() {
    return 'WeatherState.result(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResultState &&
            const DeepCollectionEquality().equals(other._weathers, _weathers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weathers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResultStateCopyWith<_$_WeatherResultState> get copyWith =>
      __$$_WeatherResultStateCopyWithImpl<_$_WeatherResultState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<WeatherEntity> weathers) result,
  }) {
    return result(weathers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<WeatherEntity> weathers)? result,
  }) {
    return result?.call(weathers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<WeatherEntity> weathers)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoadingState value) loading,
    required TResult Function(_WeatherFailureState value) failure,
    required TResult Function(_WeatherResultState value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherLoadingState value)? loading,
    TResult? Function(_WeatherFailureState value)? failure,
    TResult? Function(_WeatherResultState value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoadingState value)? loading,
    TResult Function(_WeatherFailureState value)? failure,
    TResult Function(_WeatherResultState value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _WeatherResultState implements WeatherState {
  const factory _WeatherResultState(
      {required final List<WeatherEntity> weathers}) = _$_WeatherResultState;

  List<WeatherEntity> get weathers;
  @JsonKey(ignore: true)
  _$$_WeatherResultStateCopyWith<_$_WeatherResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
