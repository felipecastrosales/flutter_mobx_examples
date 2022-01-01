import 'package:flutter/material.dart';

// import 'counter/counter_page.dart';
// import 'counter_codegen/counter_codegen_page.dart';
// import 'bmi/bmi_page.dart';
// import 'observables/list/observable_list_page.dart';
// import 'observables_model/observable_model_page.dart';
import 'observable_future/future/observable_future_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Flutter | MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ObservableFuturePage(),
    );
  }
}
