import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'counter_codegen_controller.dart';

class CounterCodeGenPage extends StatefulWidget {
  const CounterCodeGenPage({super.key});

  @override
  State<CounterCodeGenPage> createState() => _CounterCodeGenPageState();
}

class _CounterCodeGenPageState extends State<CounterCodeGenPage> {
  final controller = CounterCodeGenController();
  final reactionDisposer = <ReactionDisposer>[];

  @override
  initState() {
    super.initState();
    // listen variables inside here
    var autorunDisposer = autorun((_) {
      developer.log('autorun');
      developer.log(controller.fullName.firstName);
      developer.log(controller.fullName.lastName);
    });
    // mobx change atribute observable
    var reactionDisposerReaction = reaction(
      (_) => controller.counter,
      (counter) {
        developer.log('autorun');
        developer.log(counter as String);
      },
    );

    final full = controller.fullName.firstName;
    final whenDisposer = when(
      (_) => full == 'Felipe',
      () {
        developer.log('when');
        developer.log(full);
      },
    );

    reactionDisposer.add(autorunDisposer);
    reactionDisposer.add(reactionDisposerReaction);
    reactionDisposer.add(whenDisposer);
  }

  @override
  void dispose() {
    for (var reaction in reactionDisposer) {
      reaction();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with CodeGen - MobX'),
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
            TextButton(
              onPressed: controller.changeName,
              child: const Text('Change Name'),
            ),
            TextButton(
              onPressed: controller.rollbackName,
              child: const Text('Rollback Name'),
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
