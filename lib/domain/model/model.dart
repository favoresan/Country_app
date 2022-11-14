class AllCountryData {
  String region;
  DiallingCode? diallingCode;
  Flags? flags;
  Flags? coatOfArms;
  bool? landlocked;
  String subregion;
  String startOfWeek;
  int population;
  // double area;
  List<String> capital;
  List<String> timezones;
  DrivingSide? drivingSide;
  NameCommon? name;
  Languages? languages;
  AllCountryData(
      {required this.startOfWeek,
      required this.subregion,
      required this.landlocked,
      required this.name,
      required this.drivingSide,
      required this.diallingCode,
      required this.capital,
      required this.population,
      // required this.area,
      required this.region,
      required this.coatOfArms,
      required this.flags,
      required this.languages,
      required this.timezones});
}

class Currencies {
  String name;
  String symbol;

  Currencies({required this.name, required this.symbol});
}

class Currency {
  Currencies mRU;

  Currency({required this.mRU});
}

class NameCommon {
  String common;
  NameCommon(this.common);
}

class DiallingCode {
  String code;
  DiallingCode(this.code);
}

class Languages {
  String lang;

  Languages(this.lang);
}

class DrivingSide {
  String side;

  DrivingSide(this.side);
}

class Flags {
  String png;
  String svg;

  Flags({required this.png, required this.svg});
}

class SearchRequest {
  String search;
  SearchRequest({required this.search});
}
