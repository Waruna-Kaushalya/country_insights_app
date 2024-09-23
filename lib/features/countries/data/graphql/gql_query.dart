abstract class GraphQLQuery {
  GraphQLQuery._();

  static const countries = """
    query Countries {
      countries {
        code
        capital
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

  static const String countryByCode = """
    query Country(\$code: ID!) {
      country(code: \$code) {
        awsRegion
        capital
        code
        currencies
        currency
        emoji
        name
        native
        phone
        phones
        continent {
          code
          name
        }
      }
    }
    """;
}
