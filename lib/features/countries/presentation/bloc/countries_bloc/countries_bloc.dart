import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../data/models/country.dart';
import '../../../domain/repository/i_country_repository.dart';

part 'countries_event.dart';
part 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final ICountryRepository countryRepository;

  CountriesBloc({
    required this.countryRepository,
  }) : super(CountriesState.initial()) {
    on<CountriesEvent>(
      (event, emit) async => switch (event) {
        CountriesFetchedEvent() => _countriesFetchedEvent(event, emit),
      },
    );
  }
  FutureOr<void> _countriesFetchedEvent(
    CountriesFetchedEvent event,
    Emitter<CountriesState> emit,
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
}
