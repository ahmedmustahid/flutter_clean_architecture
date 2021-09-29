import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failures.dart';
import '../../features/number_trivia/domain/entities/number_trivia.dart';

abstract class Usecase<Type, Parameters> {
  //might be better to have optional: Future<Either<Failure,Type>> call([Params params]);
  Future<Either<Failure, Type>> call(Parameters parameters);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
