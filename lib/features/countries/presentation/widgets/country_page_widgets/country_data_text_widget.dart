import 'package:flutter/material.dart';

import '../../../../../core/extentions/extentions.dart';

class CountryDataTextWidget extends StatelessWidget {
  final String text;

  const CountryDataTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleLarge,
    );
  }
}
