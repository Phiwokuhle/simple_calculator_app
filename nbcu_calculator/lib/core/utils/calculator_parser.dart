enum TokenType { number, operator }

class Token {
  final TokenType type;
  final String value;

  Token(this.type, this.value);
}

List<Token> lexer(String input) {
  final tokens = <Token>[];
  final regex = RegExp(r'(\d+(\.\d+)?|[+\-*/^()]|\s+)');

  for (var match in regex.allMatches(input)) {
    final value = match.group(0)!.trim();
    if (value.isEmpty) continue;

    if (RegExp(r'^\d+(\.\d+)?$').hasMatch(value)) {
      tokens.add(Token(TokenType.number, value));
    } else if ('+-*/'.contains(value)) {
      tokens.add(Token(TokenType.operator, value));
    }
  }

  return tokens;
}

List<Token> shuntingYard(List<Token> tokens) {
  final output = <Token>[];
  final operators = <Token>[];
  final precedence = {
    '+': 1,
    '-': 1,
    '*': 2,
    '/': 2,
  };

  for (var token in tokens) {
    switch (token.type) {
      case TokenType.number:
        output.add(token);
        break;
      case TokenType.operator:
        while (operators.isNotEmpty &&
            operators.last.type == TokenType.operator &&
            precedence[operators.last.value]! >= precedence[token.value]!) {
          output.add(operators.removeLast());
        }
        operators.add(token);
        break;
    }
  }

  while (operators.isNotEmpty) {
    output.add(operators.removeLast());
  }

  return output;
}

class Node {
  final String value;
  final Node? left;
  final Node? right;

  Node(this.value, [this.left, this.right]);

  @override
  String toString() {
    if (left != null && right != null) {
      return '($left $value $right)';
    }
    return value;
  }
}

Node buildExpressionTree(List<Token> rpnTokens) {
  final stack = <Node>[];

  for (var token in rpnTokens) {
    if (token.type == TokenType.number) {
      stack.add(Node(token.value));
    } else if (token.type == TokenType.operator) {
      final right = stack.removeLast();
      final left = stack.removeLast();
      stack.add(Node(token.value, left, right));
    }
  }

  return stack.single;
}

Node parseExpression(String input) {
  final tokens = lexer(input);
  final rpnTokens = shuntingYard(tokens);
  final expressionTree = buildExpressionTree(rpnTokens);
  return expressionTree;
}

double evaluateExpressionTree(Node node) {
  if (node.left == null && node.right == null) {
    return double.parse(node.value);
  }

  // recursively evaluate the left and right subtrees.
  final leftValue = evaluateExpressionTree(node.left!);
  final rightValue = evaluateExpressionTree(node.right!);

  switch (node.value) {
    case '+':
      return leftValue + rightValue;
    case '-':
      return leftValue - rightValue;
    case '*':
      return leftValue * rightValue;
    case '/':
      return leftValue / rightValue;
    default:
      throw UnsupportedError('Unknown operator: ${node.value}');
  }
}
