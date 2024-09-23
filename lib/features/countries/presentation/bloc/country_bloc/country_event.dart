part of 'country_bloc.dart';

@immutable
sealed class CountryEvent {}

class FetchedCountryByCodeEvent extends CountryEvent {
  final String code;

  FetchedCountryByCodeEvent({
    required this.code,
  });
}
