// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_codegen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterCodeGenController on CounterCodeGenControllerBase, Store {
  Computed<String>? _$numberComputed;

  @override
  String get number =>
      (_$numberComputed ??= Computed<String>(() => super.number,
              name: 'CounterCodeGenControllerBase.number'))
          .value;

  late final _$counterAtom =
      Atom(name: 'CounterCodeGenControllerBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$fullNameAtom =
      Atom(name: 'CounterCodeGenControllerBase.fullName', context: context);

  @override
  FullName get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(FullName value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  late final _$CounterCodeGenControllerBaseActionController =
      ActionController(name: 'CounterCodeGenControllerBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$CounterCodeGenControllerBaseActionController
        .startAction(name: 'CounterCodeGenControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName() {
    final _$actionInfo = _$CounterCodeGenControllerBaseActionController
        .startAction(name: 'CounterCodeGenControllerBase.changeName');
    try {
      return super.changeName();
    } finally {
      _$CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollbackName() {
    final _$actionInfo = _$CounterCodeGenControllerBaseActionController
        .startAction(name: 'CounterCodeGenControllerBase.rollbackName');
    try {
      return super.rollbackName();
    } finally {
      _$CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
fullName: ${fullName},
number: ${number}
    ''';
  }
}
