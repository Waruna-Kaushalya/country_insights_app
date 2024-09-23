part of 'country_bloc.dart';

enum CountriesFetchStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CountriesFetchStateStatus.initial;

  bool get isLoading => this == CountriesFetchStateStatus.loading;

  bool get isSuccess => this == CountriesFetchStateStatus.success;

  bool get isFailure => this == CountriesFetchStateStatus.failure;
}

enum CountryFetchByCodeStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CountryFetchByCodeStateStatus.initial;

  bool get isLoading => this == CountryFetchByCodeStateStatus.loading;

  bool get isSuccess => this == CountryFetchByCodeStateStatus.success;

  bool get isFailure => this == CountryFetchByCodeStateStatus.failure;
}

@immutable
class CountryState {
  final CountriesFetchStateStatus countryDataFetchStateStatus;
  final CountryFetchByCodeStateStatus countryFetchByCodeStateStatus;
  final List<Country> countries;
  final Country country;

  const CountryState({
    required this.countryDataFetchStateStatus,
    required this.countryFetchByCodeStateStatus,
    required this.countries,
    required this.country,
  });

  static CountryState initial() => CountryState(
        countryDataFetchStateStatus: CountriesFetchStateStatus.initial,
        countryFetchByCodeStateStatus: CountryFetchByCodeStateStatus.initial,
        countries: const [],
        country: Country.empty(),
      );

  CountryState copyWith({
    CountriesFetchStateStatus? countryDataFetchStateStatus,
    CountryFetchByCodeStateStatus? countryFetchByCodeStateStatus,
    List<Country>? countries,
    Country? country,
  }) {
    return CountryState(
      countryDataFetchStateStatus:
          countryDataFetchStateStatus ?? this.countryDataFetchStateStatus,
      countryFetchByCodeStateStatus:
          countryFetchByCodeStateStatus ?? this.countryFetchByCodeStateStatus,
      countries: countries ?? this.countries,
      country: country ?? this.country,
    );
  }

  @override
  bool operator ==(covariant CountryState other) {
    if (identical(this, other)) return true;

    return other.countryDataFetchStateStatus == countryDataFetchStateStatus &&
        other.countryFetchByCodeStateStatus == countryFetchByCodeStateStatus &&
        listEquals(other.countries, countries) &&
        other.country == country;
  }

  @override
  int get hashCode {
    return countryDataFetchStateStatus.hashCode ^
        countryFetchByCodeStateStatus.hashCode ^
        countries.hashCode ^
        country.hashCode;
  }
}
