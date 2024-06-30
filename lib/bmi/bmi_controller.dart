import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'bmi_controller.g.dart';

class BMIController = BMIControllerBase with _$BMIController;

abstract class BMIControllerBase with Store {
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
      bmi = weight / pow(height, 2);

      // this bmi calc is: 0.0021604938271604936

      debugPrint('how make this bmi calc is: $bmi | $weight / $height^2');
      // how make this bmi calc is: 0.0021604938271604936

      if (bmi > 30) {
        throw Exception();
      }
    } catch (e) {
      error = 'Erro ao calcular IMC :(';
    }
  }
}
