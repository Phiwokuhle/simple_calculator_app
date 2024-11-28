import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nbcu_calculator/core/utils/size_utils.dart';
import 'package:nbcu_calculator/presentation/widgets/custom_button.dart';

class InputPad extends ConsumerWidget {
  const InputPad({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const KeyPad();
  }
}

class KeyPad extends HookConsumerWidget {
  const KeyPad({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final widgetStateRead = ref.read(amountInputState.notifier);
    return Expanded(
      flex: 5,
      child: Padding(
        padding: getPadding(all: 16.0),
        child: Column(
          children: [
            // First Row
            Expanded(
              child: Row(
                children: [
                  CalculatorButton(
                      value: "history",
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Icon(
                        Icons.history,
                        size: getFontSize(48),
                        color: Colors.white,
                      )),
                  CalculatorButton(
                      value: "AC",
                      backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      'AC',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(
                      value: "*",
                      backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(
                      value: "/",
                      backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      '/',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Second Row
            Expanded(
              child: Row(
                children: [
                  CalculatorButton(value: "7",
                    backgroundColor: Colors.white,
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: "8",
                    backgroundColor: Colors.white,
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: "9",
                    backgroundColor: Colors.white,
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(
                      value: "+",
                      backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Third Row
            Expanded(
              child: Row(
                children: [
                  CalculatorButton(value: "4",
                    backgroundColor: Colors.white,
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: "5",
                    backgroundColor: Colors.white,
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: "6",
                    backgroundColor: Colors.white,
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(
                    value: "-",
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Fourth Row
            Expanded(
              child: Row(
                children: [
                  CalculatorButton(value: "1",
                    backgroundColor: Colors.white,
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: "2",
                    backgroundColor: Colors.white,
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  CalculatorButton(value: "3",
                    backgroundColor: Colors.white,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Empty space where '=' button starts spanning
                  const Spacer(flex: 1),
                ],
              ),
            ),
            // Fifth Row
            Expanded(
              child: Row(
                children: [
                  CalculatorButton(value: "C",
                    backgroundColor: Colors.white,
                    child: Icon(Icons.backspace, color: Colors.deepPurpleAccent,size: getSize(48),),
                  ),
                  CalculatorButton(value: "0",
                    backgroundColor: Colors.white,
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CalculatorButton(value: ".",
                    backgroundColor: Colors.white,
                    child: Text(
                      '.',
                      style: TextStyle(
                        fontSize: getFontSize(40),
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // '=' Button spanning two rows
                  Expanded(
                    flex: 1,
                    child: CalculatorButton(
                      value: '=',
                      backgroundColor: Colors.deepPurple,
                      textColor: Colors.white,
                      buttonHeight: 400,
                      child: Text(
                        '=',
                        style: TextStyle(
                          fontSize: getFontSize(40),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

