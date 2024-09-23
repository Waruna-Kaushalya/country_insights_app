part of 'country_bloc.dart';

@immutable
sealed class CountryEvent {}

class CountriesFetchedEvent extends CountryEvent {}
