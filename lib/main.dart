import 'package:flutter/material.dart';

import 'package:mobx_bmi/bmi/bmi_page.dart';
import 'package:mobx_bmi/counter/counter_page.dart';
import 'package:mobx_bmi/counter_codegen/counter_codegen_page.dart';
import 'package:mobx_bmi/observable_future/future/observable_future_page.dart';
import 'package:mobx_bmi/observables/list/observable_list_page.dart';
import 'package:mobx_bmi/observables_model/observable_model_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter | MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppWidget(),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap(Widget page) =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));

    final items = [
      ElevatedButton(
        onPressed: () => onTap(const ObservableListPage()),
        child: const Text('Observable List'),
      ),
      ElevatedButton(
        onPressed: () => onTap(const ObservableFuturePage()),
        child: const Text('Observable Future'),
      ),
      ElevatedButton(
        onPressed: () => onTap(const ObservableModelPage()),
        child: const Text('Observable Model'),
      ),
      ElevatedButton(
        onPressed: () => onTap(const CounterPage()),
        child: const Text('Counter'),
      ),
      ElevatedButton(
        onPressed: () => onTap(const CounterCodeGenPage()),
        child: const Text('Counter with CodeGen'),
      ),
      ElevatedButton(
        onPressed: () => onTap(const BMIPage()),
        child: const Text('BMI'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Examples'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: items.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: items[index],
          ),
        ),
      ),
    );
  }
}
