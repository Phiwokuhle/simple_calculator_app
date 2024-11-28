import 'package:freezed_annotation/freezed_annotation.dart';


part 'calculator.freezed.dart';

@freezed
class Calculator with _$Calculator {

  const factory Calculator(
      {
         @Default('') String equation,
         bool? shouldAppend,
        @Default([]) List<String> history,
        @Default('') String result,
      }) = _Calculator;



  factory Calculator.empty() =>
      const Calculator(
        equation: '',
        shouldAppend: false,
        history: [],
        result: '',
      );

}