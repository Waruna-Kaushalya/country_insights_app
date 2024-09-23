import 'package:flutter/material.dart';

import '../../../../../core/extentions/extentions.dart';
import 'country_list_widget.dart';

class CountriesPageBodyWidget extends StatelessWidget {
  const CountriesPageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Countries',
          style: context.theme.textTheme.headlineLarge,
        ),
      ),
      body: const CountryListWidget(),
    );
  }
}
