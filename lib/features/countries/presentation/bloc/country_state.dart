part of 'country_bloc.dart';

enum CountryDataFetchStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CountryDataFetchStateStatus.initial;

  bool get isLoading => this == CountryDataFetchStateStatus.loading;

  bool get isSuccess => this == CountryDataFetchStateStatus.success;

  bool get isFailure => this == CountryDataFetchStateStatus.failure;
}

@immutable
class CountryState {
  final CountryDataFetchStateStatus countryDataFetchStateStatus;
  final List<Country> countries;

  const CountryState({
    required this.countryDataFetchStateStatus,
    required this.countries,
  });

  static CountryState initial() => const CountryState(
        countryDataFetchStateStatus: CountryDataFetchStateStatus.initial,
        countries: [],
      );

  CountryState copyWith({
    CountryDataFetchStateStatus? countryDataFetchStateStatus,
    List<Country>? countries,
  }) {
    return CountryState(
      countryDataFetchStateStatus:
          countryDataFetchStateStatus ?? this.countryDataFetchStateStatus,
      countries: countries ?? this.countries,
    );
  }

  @override
  bool operator ==(covariant CountryState other) {
    if (identical(this, other)) return true;

    return other.countryDataFetchStateStatus == countryDataFetchStateStatus &&
        listEquals(other.countries, countries);
  }

  @override
  int get hashCode => countryDataFetchStateStatus.hashCode ^ countries.hashCode;
}
