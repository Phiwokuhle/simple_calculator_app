import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:nbcu_calculator/core/models/calculator.dart';
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
    final exp = Parser().parse(state.equation);
    final model = ContextModel();
    final result = '\t=\t ${exp.evaluate(EvaluationType.REAL, model)}';
    state = state.copyWith(result: result);
    _upadateHistory(state.equation+result);

  }
  void _upadateHistory(String equation){
    final List<String> tempList =[];
    tempList.add(equation);
    state = state.copyWith(history:tempList );
    if (state.history.length > 2) {
      state.history.removeAt(0); // Remove the oldest result
    }


  }
}
