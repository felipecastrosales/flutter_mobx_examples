// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BMIController on BMIControllerBase, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: 'BMIControllerBase.hasError'))
          .value;

  late final _$bmiAtom = Atom(name: 'BMIControllerBase.bmi', context: context);

  @override
  double get bmi {
    _$bmiAtom.reportRead();
    return super.bmi;
  }

  @override
  set bmi(double value) {
    _$bmiAtom.reportWrite(value, super.bmi, () {
      super.bmi = value;
    });
  }

  late final _$errorAtom =
      Atom(name: 'BMIControllerBase.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$calculateBMIAsyncAction =
      AsyncAction('BMIControllerBase.calculateBMI', context: context);

  @override
  Future<void> calculateBMI({required double weight, required double height}) {
    return _$calculateBMIAsyncAction
        .run(() => super.calculateBMI(weight: weight, height: height));
  }

  @override
  String toString() {
    return '''
bmi: ${bmi},
error: ${error},
hasError: ${hasError}
    ''';
  }
}
