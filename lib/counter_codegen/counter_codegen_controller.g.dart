// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_codegen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterCodeGenController on _CounterCodeGenControllerBase, Store {
  Computed<String>? _$numberComputed;

  @override
  String get number =>
      (_$numberComputed ??= Computed<String>(() => super.number,
              name: '_CounterCodeGenControllerBase.number'))
          .value;

  final _$counterAtom = Atom(name: '_CounterCodeGenControllerBase.counter');

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

  final _$fullNameAtom = Atom(name: '_CounterCodeGenControllerBase.fullName');

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

  final _$_CounterCodeGenControllerBaseActionController =
      ActionController(name: '_CounterCodeGenControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CounterCodeGenControllerBaseActionController
        .startAction(name: '_CounterCodeGenControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName() {
    final _$actionInfo = _$_CounterCodeGenControllerBaseActionController
        .startAction(name: '_CounterCodeGenControllerBase.changeName');
    try {
      return super.changeName();
    } finally {
      _$_CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rollbackName() {
    final _$actionInfo = _$_CounterCodeGenControllerBaseActionController
        .startAction(name: '_CounterCodeGenControllerBase.rollbackName');
    try {
      return super.rollbackName();
    } finally {
      _$_CounterCodeGenControllerBaseActionController.endAction(_$actionInfo);
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
