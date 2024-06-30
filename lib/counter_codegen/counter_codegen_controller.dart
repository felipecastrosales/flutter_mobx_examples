import 'package:mobx/mobx.dart';

import 'package:mobx_bmi/model/full_name.dart';

part 'counter_codegen_controller.g.dart';

class CounterCodeGenController = CounterCodeGenControllerBase
    with _$CounterCodeGenController;

abstract class CounterCodeGenControllerBase with Store {
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
  }

  @action
  void changeName() {
    fullName = fullName.copyWith(
      firstName: 'Felipe',
      lastName: 'Sales',
    );
  }

  @action
  void rollbackName() {
    fullName = fullName.copyWith(
      firstName: 'first',
      lastName: 'last',
    );
  }
}
