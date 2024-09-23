part of 'countries_bloc.dart';

@immutable
sealed class CountriesEvent {}

class CountriesFetchedEvent extends CountriesEvent {}

