import '../models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  ///Calls api http://numbersapi.com/{number}
  ///
  ///throws [Server Exception] for error codes
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);

  ///Calls api http://numbersapi.com/random
  ///
  ///throws [Server Exception] for error codes
  Future<NumberTriviaModel> getRandomNumberTrivia();
}
