import 'package:country_app/app/extensions.dart';
import 'package:country_app/data/responses/responses.dart';
import 'package:country_app/domain/model/model.dart';

const EMPTY = '';
const ZERO = 0;
const ZERODouble = 0.0;

extension AllCountryDataResponseMapper on AllCountryDataResponse? {
  AllCountryData toDomain() {
    List<String> mappedTimeZone =
        (this?.timezones?.map((src) => src.orEmpty()) ?? Iterable.empty())
            .cast<String>()
            .toList();

    List<String> mappedCapital =
        (this?.capital?.map((src) => src.orEmpty()) ?? Iterable.empty())
            .cast<String>()
            .toList();

    return AllCountryData(
        population: this?.population?.orZero() ?? ZERO,
        capital: mappedCapital,
        subregion: this?.subregion?.orEmpty() ?? EMPTY,
        startOfWeek: this?.startOfWeek?.orEmpty() ?? EMPTY,
        timezones: mappedTimeZone,
        landlocked: this?.landlocked,
        name: this?.name?.toDomain(),
        drivingSide: this?.drivingSide?.toDomain(),
        diallingCode: this?.code?.toDomain(),
        region: this?.region?.orEmpty() ?? EMPTY,
        coatOfArms: this?.coatOfArms?.toDomain(),
        flags: this?.flags?.toDomain(),
        languages: this?.lang?.toDomain());
  }
}

extension NameCommonDataResponseMapper on NameCommonDataResponse? {
  NameCommon toDomain() {
    return NameCommon(this?.commonName?.orEmpty() ?? EMPTY);
  }
}

extension DrivingSideDataResponseMapper on DrivingSideDataResponse? {
  DrivingSide toDomain() {
    return DrivingSide(this?.side?.orEmpty() ?? EMPTY);
  }
}

extension DiallingCodeDataResponseMapper on DiallingCodeDataResponse? {
  DiallingCode toDomain() {
    return DiallingCode(this?.code?.orEmpty() ?? EMPTY);
  }
}

extension LanguagesDataResponseMapper on LanguagesDataResponse? {
  Languages toDomain() {
    return Languages(this?.lang?.orEmpty() ?? EMPTY);
  }
}

extension FlagDataResponseMapper on FlagDataResponse? {
  Flags toDomain() {
    return Flags(
        png: this?.png?.orEmpty() ?? EMPTY, svg: this?.svg?.orEmpty() ?? EMPTY);
  }
}
