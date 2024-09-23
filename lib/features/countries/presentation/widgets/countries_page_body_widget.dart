import 'package:flutter/material.dart';

import 'country_list_widget.dart';

class CountriesPageBodyWidget extends StatelessWidget {
  const CountriesPageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CountryListWidget(),
    );
  }
}
