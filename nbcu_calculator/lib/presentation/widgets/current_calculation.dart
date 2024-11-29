import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nbcu_calculator/core/providers/calculator_provider.dart';
import 'package:nbcu_calculator/core/utils/size_utils.dart';

class CurrentCalculationView extends ConsumerWidget {
  const CurrentCalculationView ({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref,) {
    final calcProvider = ref.watch(calculatorProvider);
    return Container(
      padding: getPadding(all: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.purple, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            calcProvider.equation,
            style: const TextStyle(fontSize: 24, color: Colors.black),
          ),
          Text(
            calcProvider.result,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
