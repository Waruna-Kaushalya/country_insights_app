part of 'countries_bloc.dart';

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

@immutable
class CountriesState {
  final CountriesFetchStateStatus countryDataFetchStateStatus;

  final List<Country> countries;

  const CountriesState({
    required this.countryDataFetchStateStatus,
    required this.countries,
  });

  static CountriesState initial() => const CountriesState(
        countryDataFetchStateStatus: CountriesFetchStateStatus.initial,
        countries: [],
      );

  CountriesState copyWith({
    CountriesFetchStateStatus? countryDataFetchStateStatus,
    List<Country>? countries,
  }) {
    return CountriesState(
      countryDataFetchStateStatus:
          countryDataFetchStateStatus ?? this.countryDataFetchStateStatus,
      countries: countries ?? this.countries,
    );
  }

  @override
  bool operator ==(covariant CountriesState other) {
    if (identical(this, other)) return true;

    return other.countryDataFetchStateStatus == countryDataFetchStateStatus &&
        listEquals(other.countries, countries);
  }

  @override
  int get hashCode => countryDataFetchStateStatus.hashCode ^ countries.hashCode;
}
