import 'package:graphql_flutter/graphql_flutter.dart';

import '../models/country.dart';
import 'gql_config.dart';
import 'gql_query.dart';

class GqlApi {
  final GraphQLConfig graphQLConfig;

  GqlApi({required this.graphQLConfig});

  Future<List<Country>> fetchCountries() async {
    final QueryOptions options = QueryOptions(
      document: gql(GraphQLQuery.countries),
    );

    try {
      final QueryResult result =
          await graphQLConfig.clientToQuery().query(options);

      if (result.hasException) {
        throw Exception('GraphQL error: ${result.exception.toString()}');
      }

      final List<dynamic>? data = result.data?['countries'];
      if (data == null || data.isEmpty) {
        throw Exception('No data found for countries');
      }

      // Convert List<dynamic> to List<Country> using Freezed's fromJson
      final List<Country> countries = data
          .map((country) => Country.fromJson(country as Map<String, dynamic>))
          .toList();

      return countries;
    } catch (e) {
      throw Exception('Failed to fetch countries: $e');
    }
  }
}
