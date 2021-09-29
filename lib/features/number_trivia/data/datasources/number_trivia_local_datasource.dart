import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  ///Gets cached [NumberTriviaModel] at the last connection
  ///
  ///Throws [CacheException] when no cache at no internet
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}
