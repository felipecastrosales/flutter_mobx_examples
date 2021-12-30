import 'dart:html';

import 'package:mobx/mobx.dart';

import 'model/full_name.dart';

part 'counter_codegen_controller.g.dart';

class CounterCodeGenController = _CounterCodeGenControllerBase
    with _$CounterCodeGenController;

abstract class _CounterCodeGenControllerBase with Store {
  @observable
  int counter = 0;

  @observable
  var fullName = FullName(
    firstName: 'first',
    lastName: 'last',
  );

  @computed
  String get number => 'Number is: $counter';

  @action
  void increment() {
    counter++;
    fullName = fullName.copyWith(
      firstName: 'Felipe',
      lastName: 'Sales',
    );
  }
}
