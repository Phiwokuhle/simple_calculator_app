import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:nbcu_calculator/core/models/calculator.dart';
import 'package:nbcu_calculator/core/utils/calculator_parser.dart';
import 'package:nbcu_calculator/core/utils/calculator_util.dart';

final StateNotifierProvider<CalculatorNotifier, Calculator> calculatorProvider =
    StateNotifierProvider((ref) => CalculatorNotifier(Calculator()));

class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier(super.state);

  void append(String value) {
    if(state.result.isNotEmpty){
      state = state.copyWith(equation: '',result: '');
    }
    final equation = () {
      if (CalculatorUtils.isValidSequence(state.equation, value) &&
          state.equation != '0') {
        if (state.equation == '0') return '0';
      }

      if (CalculatorUtils.isOperator(value) &&
          CalculatorUtils.endWithOperators(state.equation ?? '', value)) {
        return CalculatorUtils.replaceOperator(state.equation ?? '', value);
      }
      return state.equation == '' || state.equation == '0'
          ? value
          : state.equation + value;
    }();
    state = state.copyWith(equation: equation);
  }

  void clearEquation() {
    state = state.copyWith(equation: '0',result: '');
  }

  void equals() {
    final expressionTree = parseExpression(state.equation);
    final result = evaluateExpressionTree(expressionTree);
    final resultString = result % 1 == 0
        ? result.toInt().toString()
        : result.toString();

    final result1 = '\t=\t $resultString';
    state = state.copyWith(result: result1);
    _updateHistory(state.equation + result1);
  }
 void backSpace(){
    if(state.equation.isNotEmpty && state.equation != '0'){
      state = state.copyWith(equation: state.equation.substring(0,state.equation.length-1));
      if(state.result.isNotEmpty){
        state =state.copyWith(result: '');
      }
    }
 }
  void _updateHistory(String equation) {
    final updatedHistory = [...state.history, equation];
    if (updatedHistory.length > 2) {
      updatedHistory.removeAt(0);
    }
    state = state.copyWith(history: updatedHistory);
  }
}
