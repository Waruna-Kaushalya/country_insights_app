abstract class GraphQLQuery {
  GraphQLQuery._();

  static const countries = """
    query Countries {
      countries {
        code
        currency
        emoji
        name
        continent {
          code
          name
        }
        languages {
          code
          name
          native
          rtl
        }
      }
    }
    """;
}
