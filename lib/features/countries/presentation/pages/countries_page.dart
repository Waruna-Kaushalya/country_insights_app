import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/graphql/gql_api.dart';
import '../../data/graphql/gql_config.dart';
import '../../data/repository/country_repositor.dart';
import '../bloc/countries_bloc/countries_bloc.dart';
import '../widgets/countries_page_widgets/countries_page_body_widget.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountriesBloc(
        countryRepository: CountryRepository(
          api: GqlApi(
            graphQLConfig: GraphQLConfig(),
          ),
        ),
      )..add(CountriesFetchedEvent()),
      child: const CountriesPageBodyWidget(),
    );
  }
}
