import 'package:provider/provider.dart';
import 'package:provider_exp1/button/counter_viewmodel.dart';

import '/button/button_min.dart';
import '/button/button_plus.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ChangeNotifierProvider(
      create: (context) => CounterViewmodel(),
      builder: (context, child) {
        return Column(
          children: [
            Text('${context.watch<CounterViewmodel>().value}',
                style: TextStyle(fontSize: 25)),
            Row(
              children: [ButtonCounterMin(), ButtonCounterPlus()],
            )
          ],
        );
      },
    )));
  }
}
