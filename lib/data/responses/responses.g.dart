// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCountryDataResponse _$AllCountryDataResponseFromJson(
        Map<String, dynamic> json) =>
    AllCountryDataResponse(
      name: json['name'] == null
          ? null
          : NameCommonDataResponse.fromJson(
              json['name'] as Map<String, dynamic>),
      region: json['region'] as String?,
      code: json['idd'] == null
          ? null
          : DiallingCodeDataResponse.fromJson(
              json['idd'] as Map<String, dynamic>),
      lang: json['languages'] == null
          ? null
          : LanguagesDataResponse.fromJson(
              json['languages'] as Map<String, dynamic>),
      drivingSide: json['car'] == null
          ? null
          : DrivingSideDataResponse.fromJson(
              json['car'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : FlagDataResponse.fromJson(json['flags'] as Map<String, dynamic>),
      coatOfArms: json['coatOfArms'] == null
          ? null
          : FlagDataResponse.fromJson(
              json['coatOfArms'] as Map<String, dynamic>),
      population: json['population'] as int?,
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timezones: (json['timezones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      landlocked: json['landlocked'] as bool?,
      startOfWeek: json['startOfWeek'] as String?,
      subregion: json['subregion'] as String?,
    );

Map<String, dynamic> _$AllCountryDataResponseToJson(
        AllCountryDataResponse instance) =>
    <String, dynamic>{
      'region': instance.region,
      'landlocked': instance.landlocked,
      'subregion': instance.subregion,
      'startOfWeek': instance.startOfWeek,
      'population': instance.population,
      'capital': instance.capital,
      'timezones': instance.timezones,
      'name': instance.name,
      'idd': instance.code,
      'languages': instance.lang,
      'car': instance.drivingSide,
      'flags': instance.flags,
      'coatOfArms': instance.coatOfArms,
    };

FlagDataResponse _$FlagDataResponseFromJson(Map<String, dynamic> json) =>
    FlagDataResponse(
      png: json['png'] as String?,
      svg: json['svg'] as String?,
    );

Map<String, dynamic> _$FlagDataResponseToJson(FlagDataResponse instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
    };

DrivingSideDataResponse _$DrivingSideDataResponseFromJson(
        Map<String, dynamic> json) =>
    DrivingSideDataResponse(
      side: json['side'] as String?,
    );

Map<String, dynamic> _$DrivingSideDataResponseToJson(
        DrivingSideDataResponse instance) =>
    <String, dynamic>{
      'side': instance.side,
    };

LanguagesDataResponse _$LanguagesDataResponseFromJson(
        Map<String, dynamic> json) =>
    LanguagesDataResponse(
      lang: json['swe'] as String?,
    );

Map<String, dynamic> _$LanguagesDataResponseToJson(
        LanguagesDataResponse instance) =>
    <String, dynamic>{
      'swe': instance.lang,
    };

DiallingCodeDataResponse _$DiallingCodeDataResponseFromJson(
        Map<String, dynamic> json) =>
    DiallingCodeDataResponse(
      code: json['root'] as String?,
    );

Map<String, dynamic> _$DiallingCodeDataResponseToJson(
        DiallingCodeDataResponse instance) =>
    <String, dynamic>{
      'root': instance.code,
    };

NameCommonDataResponse _$NameCommonDataResponseFromJson(
        Map<String, dynamic> json) =>
    NameCommonDataResponse(
      commonName: json['common'] as String?,
    );

Map<String, dynamic> _$NameCommonDataResponseToJson(
        NameCommonDataResponse instance) =>
    <String, dynamic>{
      'common': instance.commonName,
    };
