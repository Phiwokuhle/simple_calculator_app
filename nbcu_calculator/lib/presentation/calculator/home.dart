import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nbcu_calculator/presentation/widgets/history_widget.dart';
import 'package:nbcu_calculator/presentation/widgets/input_pad.dart';

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Phiwo V')),
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
