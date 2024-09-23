import '../../domain/repository/i_country_repository.dart';
import '../graphql/gql_api.dart';
import '../models/country.dart';

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

  @override
  Future<Country> fetchCountryByCode({required String code}) async {
    final country = await api.fetchCountryByCode(
      code: code,
    );
    return country;
  }
}
