// Mock class for ICountryRepository
import 'package:bloc_test/bloc_test.dart';
import 'package:country_insights_app/features/countries/data/models/country.dart';
import 'package:country_insights_app/features/countries/domain/repository/i_country_repository.dart';
import 'package:country_insights_app/features/countries/presentation/bloc/countries_bloc/countries_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCountryRepository extends Mock implements ICountryRepository {}

void main() {
  late CountriesBloc countriesBloc;
  late MockCountryRepository mockCountryRepository;

  setUpAll(() {
    registerFallbackValue(CountriesFetchedEvent());
  });

  setUp(() {
    mockCountryRepository = MockCountryRepository();
    countriesBloc = CountriesBloc(countryRepository: mockCountryRepository);
  });

  tearDown(() {
    countriesBloc.close();
  });

  group('CountriesBloc Tests', () {
    test('Initial state should be CountriesState.initial()', () {
      expect(countriesBloc.state, CountriesState.initial());
    });

    blocTest<CountriesBloc, CountriesState>(
      'emits [loading, success] when CountriesFetchedEvent is added and fetch is successful',
      build: () {
        when(() => mockCountryRepository.fetchCountries()).thenAnswer(
          (_) async => [
            const Country(
              name: 'USA',
              code: 'US',
              capital: 'capital',
              currency: 'currency',
              emoji: 'emoji',
              continent: null,
              languages: [],
              native: '',
              phone: 'phone',
            ),
            const Country(
              name: 'USA',
              code: 'US',
              capital: 'capital',
              currency: 'currency',
              emoji: 'emoji',
              continent: null,
              languages: [],
              native: '',
              phone: 'phone',
            ),
          ],
        );
        return countriesBloc;
      },
      act: (bloc) => bloc.add(CountriesFetchedEvent()),
      expect: () => [
        CountriesState.initial().copyWith(
          countryDataFetchStateStatus: CountriesFetchStateStatus.loading,
        ),
        CountriesState.initial().copyWith(
          countries: [
            const Country(
              name: 'USA',
              code: 'US',
              capital: 'capital',
              currency: 'currency',
              emoji: 'emoji',
              continent: null,
              languages: [],
              native: '',
              phone: 'phone',
            ),
            const Country(
              name: 'USA',
              code: 'US',
              capital: 'capital',
              currency: 'currency',
              emoji: 'emoji',
              continent: null,
              languages: [],
              native: '',
              phone: 'phone',
            ),
          ],
          countryDataFetchStateStatus: CountriesFetchStateStatus.success,
        ),
      ],
      verify: (_) {
        verify(() => mockCountryRepository.fetchCountries()).called(1);
      },
    );

    blocTest<CountriesBloc, CountriesState>(
      'emits [loading, failure] when CountriesFetchedEvent is added and fetch fails',
      build: () {
        when(() => mockCountryRepository.fetchCountries())
            .thenThrow(Exception('Failed to fetch countries'));
        return countriesBloc;
      },
      act: (bloc) => bloc.add(CountriesFetchedEvent()),
      expect: () => [
        CountriesState.initial().copyWith(
          countryDataFetchStateStatus: CountriesFetchStateStatus.loading,
        ),
        CountriesState.initial().copyWith(
          countryDataFetchStateStatus: CountriesFetchStateStatus.failure,
        ),
      ],
      verify: (_) {
        verify(() => mockCountryRepository.fetchCountries()).called(1);
      },
    );
  });
}
