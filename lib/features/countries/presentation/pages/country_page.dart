import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/country_bloc.dart';
import '../widgets/country_page_body_widget.dart';

class CountryPage extends StatelessWidget {
  final String code;
  final CountryBloc countryBloc;

  const CountryPage({
    super.key,
    required this.code,
    required this.countryBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: countryBloc
        ..add(
          FetchedCountryByCodeEvent(
            code: code,
          ),
        ),
      child: const CountryPageBodyWidget(),
    );
  }
}
