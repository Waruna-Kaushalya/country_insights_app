import '../../../../core/data/graphql/gql_api.dart';
import '../../../../core/data/models/country.dart';
import '../../domain/repository/i_country_repository.dart';

class CountryRepository implements ICountryRepository {
  final GqlApi api;

  CountryRepository({
    required this.api,
  });

  @override
  Future<List<Country>> fetchCountries() async {
    final countries = await api.fetchCountries();
    return countries;
  }
}
