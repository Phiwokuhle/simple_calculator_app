class CalculatorUtils{
 static final List<String> operators = ['+','-','*','/','.','='];

static bool isOperator(String value){
  return operators.contains(value);
}
 static bool endWithOperators(String currentEquation,String value){
   return isOperator(value) && isOperator(_getLastChar(currentEquation));
 }

 static String _getLastChar(String input){
  return  input[input.length - 1];
 }
 static String replaceOperator(String currentEquation,String value){
   return currentEquation.substring(0, currentEquation.length - 1) + value;
 }
 static bool isValidSequence(String currentEquation,String value){
   return currentEquation.isNotEmpty || !isOperator(value);
 }
}