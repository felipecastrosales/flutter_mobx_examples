import 'dart:math';

import 'package:mobx/mobx.dart';
part 'bmi_controller.g.dart';

class BMIController = _BMIControllerBase with _$BMIController;

abstract class _BMIControllerBase with Store {
  @observable
  var bmi = 0.0;

  @observable
  String? error;

  @computed
  bool get hasError => error != null;

  @action
  Future<void> calculateBMI({
    required double weight,
    required double height,
  }) async {
    try {
      bmi = 0;
      error = null;
      await Future.delayed(
        const Duration(seconds: 1),
      );
      bmi = weight / pow(height, 2);

      if (bmi > 30) {
        throw Exception();
      }
    } catch (e) {
      error = 'Erro ao calcular IMC :(';
    }
  }
}
