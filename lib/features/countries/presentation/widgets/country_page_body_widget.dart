import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/shimmer_text.dart';
import '../bloc/country_bloc.dart';

class CountryPageBodyWidget extends StatelessWidget {
  const CountryPageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: BlocBuilder<CountryBloc, CountryState>(
          builder: (context, state) {
            if (state.countryFetchByCodeStateStatus.isSuccess) {
              return Text(state.country.name!);
            } else if (state.countryFetchByCodeStateStatus.isLoading) {
              return const ShimmerText(child: Text('Country name'));
            } else {
              return const Text('Country name');
            }
          },
        ),
      ),
      body: Container(),
    );
  }
}
