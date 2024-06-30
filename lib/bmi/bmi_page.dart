import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_bmi/bmi/bmi_controller.dart';
import 'package:mobx_bmi/widgets/bmi_gauge.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  final controller = BMIController();
  final formKey = GlobalKey<FormState>();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final reactionDisposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();
    final reactionErrorDisposer = reaction<bool>(
      (_) => controller.hasError,
      (hasError) {
        if (hasError) {
          final snackBar = SnackBar(
            content: Text(controller.error ?? 'Ocorreu algum erro'),
            duration: const Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
    reactionDisposer.add(reactionErrorDisposer);
  }

  @override
  void dispose() {
    for (var reaction in reactionDisposer) {
      reaction();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formatters = [
      CurrencyTextInputFormatter(
        NumberFormat.currency(
          locale: 'pt_BR',
          symbol: '',
          decimalDigits: 2,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI | MobX'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Observer(
                  builder: (_) => Center(
                    child: BMIGauge(bmi: controller.bmi),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: weightController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Mandatory Weight';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Weight'),
                  inputFormatters: formatters,
                ),
                TextFormField(
                  controller: heightController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Mandatory Height';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Height'),
                  inputFormatters: formatters,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Calculate BMI'),
                  onPressed: () {
                    final isFormValid =
                        formKey.currentState?.validate() ?? false;
                    if (isFormValid) {
                      final weight = double.parse(
                        weightController.text.replaceAll(',', '.'),
                      );
                      final height = double.parse(
                        heightController.text.replaceAll(',', '.'),
                      );

                      controller.calculateBMI(
                        weight: weight,
                        height: height,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
