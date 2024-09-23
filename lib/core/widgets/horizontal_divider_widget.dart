import 'package:flutter/material.dart';

import '../constants/color_codes.dart';

class HorizontalDividerWidget extends Divider {
  const HorizontalDividerWidget({
    double super.thickness = 0.5,
    Color super.color = ColorCodes.blackColor,
    super.key,
  });
}

class VerticalDividerWidget extends VerticalDivider {
  const VerticalDividerWidget({
    double super.thickness = 0.5,
    Color super.color = ColorCodes.blackColor,
    super.key,
  });
}
