import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class AllCountryDataResponse {
  String? region;
  bool? landlocked;
  String? subregion;
  String? startOfWeek;
  int? population;
  // double? area;
  List<String>? capital;
  List<String>? timezones;
  @JsonKey(name: 'name')
  NameCommonDataResponse? name;
  @JsonKey(name: 'idd')
  DiallingCodeDataResponse? code;
  @JsonKey(name: 'languages')
  LanguagesDataResponse? lang;
  @JsonKey(name: 'car')
  DrivingSideDataResponse? drivingSide;
  @JsonKey(name: 'flags')
  FlagDataResponse? flags;
  @JsonKey(name: 'coatOfArms')
  FlagDataResponse? coatOfArms;

  AllCountryDataResponse({
    this.name,
    this.region,
    this.code,
    this.lang,
    this.drivingSide,
    this.flags,
    this.coatOfArms,
    this.population,
    this.capital,
    this.timezones,
    // this.area,
    this.landlocked,
    this.startOfWeek,
    this.subregion,
  });
  factory AllCountryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCountryDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AllCountryDataResponseToJson(this);
}

@JsonSerializable()
class FlagDataResponse {
  @JsonKey(name: 'png')
  String? png;
  @JsonKey(name: 'svg')
  String? svg;

  FlagDataResponse({this.png, this.svg});
  factory FlagDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FlagDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FlagDataResponseToJson(this);
}

@JsonSerializable()
class DrivingSideDataResponse {
  @JsonKey(name: 'side')
  String? side;

  DrivingSideDataResponse({this.side});
  factory DrivingSideDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DrivingSideDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DrivingSideDataResponseToJson(this);
}

@JsonSerializable()
class LanguagesDataResponse {
  @JsonKey(name: 'swe')
  String? lang;

  LanguagesDataResponse({this.lang});
  factory LanguagesDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LanguagesDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LanguagesDataResponseToJson(this);
}

@JsonSerializable()
class DiallingCodeDataResponse {
  @JsonKey(name: 'root')
  String? code;

  DiallingCodeDataResponse({this.code});
  factory DiallingCodeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DiallingCodeDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DiallingCodeDataResponseToJson(this);
}

@JsonSerializable()
class NameCommonDataResponse {
  @JsonKey(name: 'common')
  String? commonName;

  NameCommonDataResponse({this.commonName});
  factory NameCommonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NameCommonDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$NameCommonDataResponseToJson(this);
}

//final value = (_result.data as List<Object?>)
//         .map((e) => AllCountryDataResponse.fromJson(e as Map<String, Object?>))
//         .toList();
