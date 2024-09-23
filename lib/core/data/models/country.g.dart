// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesImpl _$$CountriesImplFromJson(Map<String, dynamic> json) =>
    _$CountriesImpl(
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountriesImplToJson(_$CountriesImpl instance) =>
    <String, dynamic>{
      'countries': instance.countries,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      code: json['code'] as String?,
      currency: json['currency'] as String?,
      emoji: json['emoji'] as String?,
      name: json['name'] as String?,
      continent: json['continent'] == null
          ? null
          : Continent.fromJson(json['continent'] as Map<String, dynamic>),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'currency': instance.currency,
      'emoji': instance.emoji,
      'name': instance.name,
      'continent': instance.continent,
      'languages': instance.languages,
    };

_$ContinentImpl _$$ContinentImplFromJson(Map<String, dynamic> json) =>
    _$ContinentImpl(
      code: $enumDecodeNullable(_$CodeEnumMap, json['code']),
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
    );

Map<String, dynamic> _$$ContinentImplToJson(_$ContinentImpl instance) =>
    <String, dynamic>{
      'code': _$CodeEnumMap[instance.code],
      'name': _$NameEnumMap[instance.name],
    };

const _$CodeEnumMap = {
  Code.AF: 'AF',
  Code.AN: 'AN',
  Code.AS: 'AS',
  Code.EU: 'EU',
  Code.NA: 'NA',
  Code.OC: 'OC',
  Code.SA: 'SA',
};

const _$NameEnumMap = {
  Name.AFRICA: 'Africa',
  Name.ANTARCTICA: 'Antarctica',
  Name.ASIA: 'Asia',
  Name.EUROPE: 'Europe',
  Name.NORTH_AMERICA: 'North America',
  Name.OCEANIA: 'Oceania',
  Name.SOUTH_AMERICA: 'South America',
};

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      native: json['native'] as String?,
      rtl: json['rtl'] as bool?,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'rtl': instance.rtl,
    };
