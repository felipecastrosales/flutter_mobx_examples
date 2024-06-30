import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMIGaugeRange extends GaugeRange {
  BMIGaugeRange({
    super.key,
    required Color super.color,
    required double start,
    required double end,
    required String super.label,
  }) : super(
          startValue: start,
          endValue: end,
          startWidth: 0.65,
          endWidth: 0.65,
          sizeUnit: GaugeSizeUnit.factor,
          labelStyle: const GaugeTextStyle(
            fontFamily: 'Times',
            fontSize: 12,
          ),
        );
}
