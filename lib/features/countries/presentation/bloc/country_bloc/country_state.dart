part of 'country_bloc.dart';

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
  final CountryFetchByCodeStateStatus countryFetchByCodeStateStatus;
  final Country country;

  const CountryState({
    required this.countryFetchByCodeStateStatus,
    required this.country,
  });

  static CountryState initial() => CountryState(
        countryFetchByCodeStateStatus: CountryFetchByCodeStateStatus.initial,
        country: Country.empty(),
      );

  CountryState copyWith({
    CountryFetchByCodeStateStatus? countryFetchByCodeStateStatus,
    Country? country,
  }) {
    return CountryState(
      countryFetchByCodeStateStatus:
          countryFetchByCodeStateStatus ?? this.countryFetchByCodeStateStatus,
      country: country ?? this.country,
    );
  }

  @override
  bool operator ==(covariant CountryState other) {
    if (identical(this, other)) return true;

    return other.countryFetchByCodeStateStatus ==
            countryFetchByCodeStateStatus &&
        other.country == country;
  }

  @override
  int get hashCode => countryFetchByCodeStateStatus.hashCode ^ country.hashCode;
}
