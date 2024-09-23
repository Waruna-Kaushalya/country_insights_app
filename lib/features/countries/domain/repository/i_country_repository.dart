import '../../data/models/country.dart';

abstract class ICountryRepository {
  Future<List<Country>> fetchCountries();

  Future<Country> fetchCountryByCode({
    required String code,
  });
}
