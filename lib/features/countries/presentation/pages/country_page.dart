import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/graphql/gql_api.dart';
import '../../data/graphql/gql_config.dart';
import '../../data/repository/country_repositor.dart';
import '../bloc/country_bloc/country_bloc.dart';
import '../widgets/country_page_widgets/country_page_body_widget.dart';

class CountryPage extends StatelessWidget {
  final String code;

  const CountryPage({
    super.key,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountryBloc(
        countryRepository: CountryRepository(
          api: GqlApi(
            graphQLConfig: GraphQLConfig(),
          ),
        ),
      )..add(
          FetchedCountryByCodeEvent(
            code: code,
          ),
        ),
      child: const CountryPageBodyWidget(),
    );
  }
}
