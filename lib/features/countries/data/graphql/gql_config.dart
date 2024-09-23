import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static final HttpLink _httpLink =
      HttpLink("https://countries.trevorblades.com");

  GraphQLClient clientToQuery() =>
      GraphQLClient(link: _httpLink, cache: GraphQLCache());
}
