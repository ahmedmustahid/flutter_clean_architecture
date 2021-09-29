import 'dart:convert';

import 'package:flutter_clean_architecture/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final testNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test text');
  //assert
  test('should be a subclass of NumberTrivia entity', () async {
    expect(testNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when JSON number is an integer',
        () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      final resultFromNumberTriviaModel = NumberTriviaModel.fromJson(jsonMap);
      expect(resultFromNumberTriviaModel, testNumberTriviaModel);
    });
  });

  group('fromJson', () {
    test('should return a valid model when JSON number is a double', () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      final resultFromNumberTriviaModel = NumberTriviaModel.fromJson(jsonMap);
      expect(resultFromNumberTriviaModel, testNumberTriviaModel);
    });
  });

  group('toJson', () {
    test('should return a Json Map containing the data', () async {
      //ACT
      final resultFromNumberTriviaModel = testNumberTriviaModel.toJson();
      //assert
      final expectedMap = {
        "text": "Test text",
        "number": 1,
      };
      expect(resultFromNumberTriviaModel, expectedMap);
    });
  });
}
