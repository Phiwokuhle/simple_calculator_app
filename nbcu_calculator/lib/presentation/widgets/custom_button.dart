import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nbcu_calculator/app/engine/app_router.dart';
import 'package:nbcu_calculator/core/providers/calculator_provider.dart';
import 'package:nbcu_calculator/core/utils/size_utils.dart';

part '_style_util.dart';

class CalculatorButton extends ConsumerWidget {
  final String value;
  final Color backgroundColor;
  final Color textColor;
  final int heightMultiplier;
  final double? buttonHeight;
  final Widget? child;

  const CalculatorButton(
      {required this.value,
      this.backgroundColor = Colors.grey,
      this.textColor = Colors.black,
      this.heightMultiplier = 1,
      this.buttonHeight,
      this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      flex: heightMultiplier,
      child: GestureDetector(
        onTap:()=>_handleOnTap(ref: ref,context: context,value: value),
        child: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: child ??
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}

void _handleOnTap({ required WidgetRef ref, required String value, required BuildContext context}){
  if (value.toLowerCase() == 'ac') {
    ref.read(calculatorProvider.notifier).clearEquation();
  } else if (value == '=') {
    ref.read(calculatorProvider.notifier).equals();
  } else if (value == 'history') {
    final List<String> history = ref.read(calculatorProvider).history;
    if (history.isNotEmpty) {
      context.router.push(
          HistoryRoute(history: ref.read(calculatorProvider).history));
    }
  } else if (value == 'C') {
    ref.read(calculatorProvider.notifier).backSpace();
  } else {
    ref.read(calculatorProvider.notifier).append(value);
  }
}