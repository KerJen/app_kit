
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class UnsupportedFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnknownFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class ConnectionFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnauthorizedFailure extends Failure {
  @override
  List<Object?> get props => [];
}
