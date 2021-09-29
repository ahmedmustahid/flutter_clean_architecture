import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  //when objects contain the same data they'll be equal
  //irrespective of their reference
  final String text;
  final int number;

  NumberTrivia({required this.text, required this.number});
  @override
  List<Object> get props => [text, number];
}
