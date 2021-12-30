import 'package:mobx/mobx.dart';

class CounterController {
  final _counter = Observable<int>(0);
  late Action increment;

  CounterController() {
    increment = Action(_incrementCounter);
  }

  int get counter => _counter.value;

  void _incrementCounter() => _counter.value++;
}
