import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';

class GraphQLConfig {
  static final HttpLink _httpLink =
      HttpLink("https://countries.trevorblades.com");

  Future<GraphQLClient> clientToQuery() async {
    final Box<Map<String, dynamic>> box =
        Hive.box<Map<String, dynamic>>('graphqlCache');

    final HiveStore hiveStore = HiveStore(box);

    return GraphQLClient(
      link: _httpLink,
      cache: GraphQLCache(store: hiveStore),
    );
  }
}
