// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:country_insights_app/core/extentions/extentions.dart';
import 'package:flutter/material.dart';

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
