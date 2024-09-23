// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'country_bloc.dart';

@immutable
sealed class CountryEvent {}

class CountriesFetchedEvent extends CountryEvent {}

class FetchedCountryByCodeEvent extends CountryEvent {
  final String code;
  
  FetchedCountryByCodeEvent({
    required this.code,
  });
}
