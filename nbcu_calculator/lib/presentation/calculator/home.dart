import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nbcu_calculator/presentation/widgets/history_widget.dart';
import 'package:nbcu_calculator/presentation/widgets/input_pad.dart';

import '../widgets/custom_button.dart';



class HomePage extends HookWidget {

  @override
  Widget build(BuildContext context) {

    final history = useState<List<String>>([
      "6 - 5 = 1",
      "10 + 5 = 15",
    ]);


    final result = useState<String>("13");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Phiwo'),
      ),
      body: const Column(
        children: [
          ResultsWidget(),
          InputPad(),
        ],
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}