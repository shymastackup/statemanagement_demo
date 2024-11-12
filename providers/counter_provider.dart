import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter(BuildContext context) {
    if (_counter > 0) {
      _counter--;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Counter cannot go below zero"),
          duration: Duration(seconds: 2),
        ),
      );
    }
    notifyListeners();
  }
}
