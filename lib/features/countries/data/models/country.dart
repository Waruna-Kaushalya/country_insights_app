import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

Countries countriesFromMap(String str) => Countries.fromJson(json.decode(str));

String countriesToMap(Countries data) => json.encode(data.toJson());

@freezed
class Countries with _$Countries {
  const factory Countries({
    @JsonKey(name: "countries") required List<Country> countries,
  }) = _Countries;

  factory Countries.fromJson(Map<String, dynamic> json) =>
      _$CountriesFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    @JsonKey(name: "code") required String? code,
    @JsonKey(name: "capital") required String? capital,
    @JsonKey(name: "currency") required String? currency,
    @JsonKey(name: "emoji") required String? emoji,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "continent") required Continent? continent,
    @JsonKey(name: "languages") required List<Language>? languages,
    @JsonKey(name: "native") required String? native,
    @JsonKey(name: "phone") required String? phone,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  factory Country.empty() => const Country(
        code: "",
        capital: "",
        currency: "",
        emoji: "",
        name: "",
        continent: null,
        languages: [],
        native: "",
        phone: "",
      );
}

@freezed
class Continent with _$Continent {
  const factory Continent({
    @JsonKey(name: "code") required Code? code,
    @JsonKey(name: "name") required Name? name,
  }) = _Continent;

  factory Continent.fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);
}

enum Code {
  @JsonValue("AF")
  AF,
  @JsonValue("AN")
  AN,
  @JsonValue("AS")
  AS,
  @JsonValue("EU")
  EU,
  @JsonValue("NA")
  NA,
  @JsonValue("OC")
  OC,
  @JsonValue("SA")
  SA
}

final codeValues = EnumValues({
  "AF": Code.AF,
  "AN": Code.AN,
  "AS": Code.AS,
  "EU": Code.EU,
  "NA": Code.NA,
  "OC": Code.OC,
  "SA": Code.SA,
});

enum Name {
  @JsonValue("Africa")
  AFRICA,
  @JsonValue("Antarctica")
  ANTARCTICA,
  @JsonValue("Asia")
  ASIA,
  @JsonValue("Europe")
  EUROPE,
  @JsonValue("North America")
  NORTH_AMERICA,
  @JsonValue("Oceania")
  OCEANIA,
  @JsonValue("South America")
  SOUTH_AMERICA
}

final nameValues = EnumValues({
  "Africa": Name.AFRICA,
  "Antarctica": Name.ANTARCTICA,
  "Asia": Name.ASIA,
  "Europe": Name.EUROPE,
  "North America": Name.NORTH_AMERICA,
  "Oceania": Name.OCEANIA,
  "South America": Name.SOUTH_AMERICA,
});

@freezed
class Language with _$Language {
  const factory Language({
    @JsonKey(name: "code") required String? code,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "native") required String? native,
    @JsonKey(name: "rtl") required bool? rtl,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
