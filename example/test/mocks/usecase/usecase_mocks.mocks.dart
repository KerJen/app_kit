// Mocks generated by Mockito 5.3.2 from annotations
// in tech_stack/test/mocks/usecase/usecase_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tech_stack/core/error/failure.dart' as _i6;
import 'package:tech_stack/domain/weather/entity/weather_entity.dart' as _i7;
import 'package:tech_stack/domain/weather/repository/weather_repository.dart'
    as _i2;
import 'package:tech_stack/domain/weather/usecase/get_weathers_usecase.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeWeatherRepository_0 extends _i1.SmartFake
    implements _i2.WeatherRepository {
  _FakeWeatherRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetWeathersUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWeathersUseCase extends _i1.Mock
    implements _i4.GetWeathersUseCase {
  @override
  _i2.WeatherRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeWeatherRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeWeatherRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.WeatherRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.WeatherEntity>>> call(
          List<String>? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i6.Failure, List<_i7.WeatherEntity>>>.value(
                _FakeEither_1<_i6.Failure, List<_i7.WeatherEntity>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.Either<_i6.Failure, List<_i7.WeatherEntity>>>.value(
                _FakeEither_1<_i6.Failure, List<_i7.WeatherEntity>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, List<_i7.WeatherEntity>>>);
}
