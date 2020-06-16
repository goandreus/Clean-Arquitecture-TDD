import 'package:Clean_Arquitecture_TDD/core/error/failures.dart';
import 'package:Clean_Arquitecture_TDD/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:Clean_Arquitecture_TDD/features/number_trivia/domain/repositories/number_trivia_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia{
  final NumberTriviaRespository repository;
  GetConcreteNumberTrivia(this.repository);
  
  Future<Either<Failure, NumberTrivia>> execute({
    @required int number
  }) async{
    return await repository.getConcreteNumberTrivia(number);
  }
}