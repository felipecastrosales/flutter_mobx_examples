import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'counter_controller.dart';

class CounterPage extends StatelessWidget {
  final controller = CounterController();
  CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter - MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Observer(
              builder: (_) => Text('${controller.counter}'),
            ),
            Observer(
              builder: (_) => Text(controller.fullName.firstName),
            ),
            Observer(
              builder: (_) => Text(controller.fullName.lastName),
            ),
            Observer(
              builder: (_) => Text(controller.number),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
