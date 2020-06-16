import 'package:Clean_Arquitecture_TDD/core/error/failures.dart';
import 'package:Clean_Arquitecture_TDD/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRespository{
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}