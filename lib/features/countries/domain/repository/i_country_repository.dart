import '../../../../core/data/models/country.dart';

abstract class ICountryRepository {
  Future<List<Country>> fetchCountries();
}
