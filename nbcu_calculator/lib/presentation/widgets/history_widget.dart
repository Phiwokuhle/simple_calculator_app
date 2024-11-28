import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nbcu_calculator/core/providers/calculator_provider.dart';
import 'package:nbcu_calculator/core/utils/size_utils.dart';

import 'current_calculation.dart';

class ResultsWidget extends ConsumerWidget {
  const ResultsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calcProvider = ref.watch(calculatorProvider);
    // final history = useState<List<String>>([
    //   "6 - 5 = 1",
    //   "10 + 5 = 15",
    // ]);
    return Expanded(
      flex: 3,
      child: Padding(
        padding: getPadding(all: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // History
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: calcProvider.history.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      calcProvider.history[index],
                      style: const  TextStyle(color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getVerticalSize(16)),
            // Current Calculation
            const CurrentCalculationView(),
          ],
        ),
      ),
    );
  }
}
