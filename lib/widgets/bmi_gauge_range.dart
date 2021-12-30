import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMIGaugeRange extends GaugeRange {
  BMIGaugeRange({
    Key? key,
    required Color color,
    required double start,
    required double end,
    required String label,
  }) : super(
          key: key,
          color: color,
          startValue: start,
          endValue: end,
          label: label,
          startWidth: 0.65,
          endWidth: 0.65,
          sizeUnit: GaugeSizeUnit.factor,
          labelStyle: const GaugeTextStyle(
            fontFamily: 'Times',
            fontSize: 12,
          ),
        );
}
