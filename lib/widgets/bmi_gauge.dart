import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'bmi_gauge_range.dart';

class BMIGauge extends StatelessWidget {
  const BMIGauge({
    super.key,
    required this.bmi,
  });

  final double bmi;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: true,
          showTicks: false,
          showAxisLine: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            BMIGaugeRange(
              color: Colors.blue,
              start: 12.5,
              end: 18.5,
              label: 'Thinness',
            ),
            BMIGaugeRange(
              color: Colors.green,
              start: 18.5,
              end: 24.5,
              label: 'Normal',
            ),
            BMIGaugeRange(
              color: Colors.yellow[600]!,
              start: 24.5,
              end: 29.9,
              label: 'Overweight',
            ),
            BMIGaugeRange(
              color: Colors.red[500]!,
              start: 29.9,
              end: 39.9,
              label: 'Obesity',
            ),
            BMIGaugeRange(
              color: Colors.red[900]!,
              start: 39.9,
              end: 47.9,
              label: 'Severe Obesity',
            ),
          ],
          pointers: [
            NeedlePointer(
              value: bmi,
              enableAnimation: true,
            ),
          ],
        ),
      ],
    );
  }
}
