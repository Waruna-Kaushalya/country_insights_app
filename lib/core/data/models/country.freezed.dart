// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Countries _$CountriesFromJson(Map<String, dynamic> json) {
  return _Countries.fromJson(json);
}

/// @nodoc
mixin _$Countries {
  @JsonKey(name: "countries")
  List<Country> get countries => throw _privateConstructorUsedError;

  /// Serializes this Countries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Countries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountriesCopyWith<Countries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesCopyWith<$Res> {
  factory $CountriesCopyWith(Countries value, $Res Function(Countries) then) =
      _$CountriesCopyWithImpl<$Res, Countries>;
  @useResult
  $Res call({@JsonKey(name: "countries") List<Country> countries});
}

/// @nodoc
class _$CountriesCopyWithImpl<$Res, $Val extends Countries>
    implements $CountriesCopyWith<$Res> {
  _$CountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Countries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesImplCopyWith<$Res>
    implements $CountriesCopyWith<$Res> {
  factory _$$CountriesImplCopyWith(
          _$CountriesImpl value, $Res Function(_$CountriesImpl) then) =
      __$$CountriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "countries") List<Country> countries});
}

/// @nodoc
class __$$CountriesImplCopyWithImpl<$Res>
    extends _$CountriesCopyWithImpl<$Res, _$CountriesImpl>
    implements _$$CountriesImplCopyWith<$Res> {
  __$$CountriesImplCopyWithImpl(
      _$CountriesImpl _value, $Res Function(_$CountriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Countries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountriesImpl(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesImpl implements _Countries {
  const _$CountriesImpl(
      {@JsonKey(name: "countries") required final List<Country> countries})
      : _countries = countries;

  factory _$CountriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesImplFromJson(json);

  final List<Country> _countries;
  @override
  @JsonKey(name: "countries")
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'Countries(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  /// Create a copy of Countries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      __$$CountriesImplCopyWithImpl<_$CountriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesImplToJson(
      this,
    );
  }
}

abstract class _Countries implements Countries {
  const factory _Countries(
      {@JsonKey(name: "countries")
      required final List<Country> countries}) = _$CountriesImpl;

  factory _Countries.fromJson(Map<String, dynamic> json) =
      _$CountriesImpl.fromJson;

  @override
  @JsonKey(name: "countries")
  List<Country> get countries;

  /// Create a copy of Countries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountriesImplCopyWith<_$CountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "emoji")
  String? get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "continent")
  Continent? get continent => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<Language>? get languages => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "emoji") String? emoji,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "continent") Continent? continent,
      @JsonKey(name: "languages") List<Language>? languages});

  $ContinentCopyWith<$Res>? get continent;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? currency = freezed,
    Object? emoji = freezed,
    Object? name = freezed,
    Object? continent = freezed,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ) as $Val);
  }

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContinentCopyWith<$Res>? get continent {
    if (_value.continent == null) {
      return null;
    }

    return $ContinentCopyWith<$Res>(_value.continent!, (value) {
      return _then(_value.copyWith(continent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "emoji") String? emoji,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "continent") Continent? continent,
      @JsonKey(name: "languages") List<Language>? languages});

  @override
  $ContinentCopyWith<$Res>? get continent;
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? currency = freezed,
    Object? emoji = freezed,
    Object? name = freezed,
    Object? continent = freezed,
    Object? languages = freezed,
  }) {
    return _then(_$CountryImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "currency") required this.currency,
      @JsonKey(name: "emoji") required this.emoji,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "continent") required this.continent,
      @JsonKey(name: "languages") required final List<Language>? languages})
      : _languages = languages;

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "emoji")
  final String? emoji;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "continent")
  final Continent? continent;
  final List<Language>? _languages;
  @override
  @JsonKey(name: "languages")
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Country(code: $code, currency: $currency, emoji: $emoji, name: $name, continent: $continent, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.continent, continent) ||
                other.continent == continent) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, currency, emoji, name,
      continent, const DeepCollectionEquality().hash(_languages));

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {@JsonKey(name: "code") required final String? code,
      @JsonKey(name: "currency") required final String? currency,
      @JsonKey(name: "emoji") required final String? emoji,
      @JsonKey(name: "name") required final String? name,
      @JsonKey(name: "continent") required final Continent? continent,
      @JsonKey(name: "languages")
      required final List<Language>? languages}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "emoji")
  String? get emoji;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "continent")
  Continent? get continent;
  @override
  @JsonKey(name: "languages")
  List<Language>? get languages;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return _Continent.fromJson(json);
}

/// @nodoc
mixin _$Continent {
  @JsonKey(name: "code")
  Code? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  Name? get name => throw _privateConstructorUsedError;

  /// Serializes this Continent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContinentCopyWith<Continent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentCopyWith<$Res> {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) then) =
      _$ContinentCopyWithImpl<$Res, Continent>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") Code? code, @JsonKey(name: "name") Name? name});
}

/// @nodoc
class _$ContinentCopyWithImpl<$Res, $Val extends Continent>
    implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinentImplCopyWith<$Res>
    implements $ContinentCopyWith<$Res> {
  factory _$$ContinentImplCopyWith(
          _$ContinentImpl value, $Res Function(_$ContinentImpl) then) =
      __$$ContinentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") Code? code, @JsonKey(name: "name") Name? name});
}

/// @nodoc
class __$$ContinentImplCopyWithImpl<$Res>
    extends _$ContinentCopyWithImpl<$Res, _$ContinentImpl>
    implements _$$ContinentImplCopyWith<$Res> {
  __$$ContinentImplCopyWithImpl(
      _$ContinentImpl _value, $Res Function(_$ContinentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ContinentImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinentImpl implements _Continent {
  const _$ContinentImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "name") required this.name});

  factory _$ContinentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinentImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final Code? code;
  @override
  @JsonKey(name: "name")
  final Name? name;

  @override
  String toString() {
    return 'Continent(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinentImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinentImplCopyWith<_$ContinentImpl> get copyWith =>
      __$$ContinentImplCopyWithImpl<_$ContinentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinentImplToJson(
      this,
    );
  }
}

abstract class _Continent implements Continent {
  const factory _Continent(
      {@JsonKey(name: "code") required final Code? code,
      @JsonKey(name: "name") required final Name? name}) = _$ContinentImpl;

  factory _Continent.fromJson(Map<String, dynamic> json) =
      _$ContinentImpl.fromJson;

  @override
  @JsonKey(name: "code")
  Code? get code;
  @override
  @JsonKey(name: "name")
  Name? get name;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinentImplCopyWith<_$ContinentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "native")
  String? get native => throw _privateConstructorUsedError;
  @JsonKey(name: "rtl")
  bool? get rtl => throw _privateConstructorUsedError;

  /// Serializes this Language to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "native") String? native,
      @JsonKey(name: "rtl") bool? rtl});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? native = freezed,
    Object? rtl = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      rtl: freezed == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
          _$LanguageImpl value, $Res Function(_$LanguageImpl) then) =
      __$$LanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "native") String? native,
      @JsonKey(name: "rtl") bool? rtl});
}

/// @nodoc
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
      _$LanguageImpl _value, $Res Function(_$LanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? native = freezed,
    Object? rtl = freezed,
  }) {
    return _then(_$LanguageImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      rtl: freezed == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageImpl implements _Language {
  const _$LanguageImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "native") required this.native,
      @JsonKey(name: "rtl") required this.rtl});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "native")
  final String? native;
  @override
  @JsonKey(name: "rtl")
  final bool? rtl;

  @override
  String toString() {
    return 'Language(code: $code, name: $name, native: $native, rtl: $rtl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.rtl, rtl) || other.rtl == rtl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, native, rtl);

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageImplToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {@JsonKey(name: "code") required final String? code,
      @JsonKey(name: "name") required final String? name,
      @JsonKey(name: "native") required final String? native,
      @JsonKey(name: "rtl") required final bool? rtl}) = _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "native")
  String? get native;
  @override
  @JsonKey(name: "rtl")
  bool? get rtl;

  /// Create a copy of Language
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
