import 'dart:developer' as developer;

import 'package:mobx/mobx.dart';

class CounterController {
  final _counter = Observable<int>(0);
  final _fullName = Observable<FullName>(
    FullName(
      firstName: 'first',
      lastName: 'last',
    ),
  );
  late Action increment;
  late Computed _number;

  CounterController() {
    increment = Action(_incrementCounter);
    _number = Computed(() => 'Number is: ${_counter.value}');
  }

  int get counter => _counter.value;
  FullName get fullName => _fullName.value;
  // String get salutation => 'Hi ${_fullName.value.firstName}';
  String get number => _number.value;

  void _incrementCounter() {
    _counter.value++;
    // It is not possible
    // _fullName.value.firstName = 'Felipe';
    // _fullName.value.lastName = 'Sales';
    developer.log('1. Hash code: ${_fullName.value.hashCode}');
    // ! Can change this
    // _fullName.value = FullName(
    //   firstName: 'Felipe',
    //   lastName: 'Sales',
    // );
    // ! For this
    _fullName.value = _fullName.value.copyWith(
      firstName: 'Felipe',
      lastName: 'Sales',
    );
    developer.log('2. Hash code: ${_fullName.value.hashCode}');
  }
}

class FullName {
  FullName({
    required this.firstName,
    required this.lastName,
  });

  final String lastName;
  final String firstName;

  FullName copyWith({
    String? firstName,
    String? lastName,
  }) {
    return FullName(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
