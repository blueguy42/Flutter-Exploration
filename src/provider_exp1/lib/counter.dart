import '/button/button_min.dart';
import '/button/button_plus.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int value = 0;

  _decerementValue() {
    setState(() {
      value--;
    });
  }

  _incrementValue() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      Text(
        value.toString(),
        style: TextStyle(fontSize: 25),
      ),
      Row(children: [
        ButtonCounterMin(
          decrement: _decerementValue,
        ),
        ButtonCounterPlus()
      ])
    ])));
  }
}
