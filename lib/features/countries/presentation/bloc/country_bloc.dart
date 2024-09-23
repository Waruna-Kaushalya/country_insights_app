import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../data/models/country.dart';
import '../../domain/repository/i_country_repository.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final ICountryRepository countryRepository;

  CountryBloc({
    required this.countryRepository,
  }) : super(CountryState.initial()) {
    on<CountryEvent>(
      (event, emit) async => switch (event) {
        CountriesFetchedEvent() => _countriesFetchedEvent(event, emit),
        FetchedCountryByCodeEvent() => _fetchedCountryByCodeEvent(event, emit),
      },
    );
  }
  FutureOr<void> _countriesFetchedEvent(
    CountriesFetchedEvent event,
    Emitter<CountryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          countryDataFetchStateStatus: CountriesFetchStateStatus.loading,
        ),
      );
      final countries = await countryRepository.fetchCountries();
      emit(
        state.copyWith(
          countries: countries,
          countryDataFetchStateStatus: CountriesFetchStateStatus.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          countryDataFetchStateStatus: CountriesFetchStateStatus.failure,
        ),
      );
    }
  }

  FutureOr<void> _fetchedCountryByCodeEvent(
    FetchedCountryByCodeEvent event,
    Emitter<CountryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          countryFetchByCodeStateStatus: CountryFetchByCodeStateStatus.loading,
        ),
      );
      final country =
          await countryRepository.fetchCountryByCode(code: event.code);
      emit(
        state.copyWith(
          country: country,
          countryFetchByCodeStateStatus: CountryFetchByCodeStateStatus.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          countryFetchByCodeStateStatus: CountryFetchByCodeStateStatus.failure,
        ),
      );
    }
  }
}
