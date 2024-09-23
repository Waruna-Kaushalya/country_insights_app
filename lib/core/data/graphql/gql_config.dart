import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  /// [HttpLink] Returns a HttpLink instance.
  static final HttpLink _httpLink =
      HttpLink("https://countries.trevorblades.com");

  /// [clientToQuery] Returns a GraphQLClient configured for querying.
  GraphQLClient clientToQuery() =>
      GraphQLClient(link: _httpLink, cache: GraphQLCache());
}
