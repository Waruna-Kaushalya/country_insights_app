import 'package:graphql_flutter/graphql_flutter.dart';

import '../models/country.dart';
import 'gql_config.dart';
import 'gql_query.dart';

class GqlApi {
  final GraphQLConfig graphQLConfig;

  GqlApi({required this.graphQLConfig});

  Future<List<Country>> fetchCountries() async {
    final GraphQLClient client = await graphQLConfig.clientToQuery();
    final QueryOptions options = QueryOptions(
      document: gql(GraphQLQuery.countries),
    );

    try {
      final QueryResult result = await client.query(options);

      final List<dynamic>? data = result.data?['countries'];
      if (data == null || data.isEmpty) {
        throw Exception('No data found for countries');
      }

      final List<Country> countries = data
          .map((country) => Country.fromJson(country as Map<String, dynamic>))
          .toList();

      return countries;
    } catch (e) {
      throw Exception('Failed to fetch countries: $e');
    }
  }

  Future<Country> fetchCountryByCode({
    required String code,
  }) async {
    final QueryOptions options = QueryOptions(
      document: gql(
        GraphQLQuery.countryByCode,
      ),
      variables: {
        'code': code,
      },
    );

    try {
      final GraphQLClient client = await graphQLConfig.clientToQuery();

      final QueryResult result = await client.query(options);

      final Map<String, dynamic>? data = result.data?['country'];
      if (data == null) {
        throw Exception('No data found for country with code $code');
      }

      final Country country = Country.fromJson(data);

      return country;
    } catch (e) {
      throw Exception('Failed to fetch country by code: $e');
    }
  }
}
