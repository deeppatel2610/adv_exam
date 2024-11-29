class CountriesModel {
  var population;
  Name? name;
  String? status, region;
  List? capital;
  Flags? flags;

  CountriesModel({
    required this.population,
    required this.region,
    required this.capital,
    required this.status,
    required this.name,
    required this.flags,
  });

  factory CountriesModel.fromJson(Map m1) {
    return CountriesModel(
      population: m1['population'],
      region: m1['region'],
      capital: m1['capital'],
      status: m1['status'],
      name: Name.fromJson(m1['name']),
      flags: Flags.fromJson(m1['flags']),
    );
  }
}

class Name {
  String? common, official;

  Name({
    required this.common,
    required this.official,
  });

  factory Name.fromJson(Map m1) {
    return Name(
      common: m1['common'],
      official: m1['official'],
    );
  }
}

class Eng {
  String? official, common;

  Eng({
    required this.official,
    required this.common,
  });

  factory Eng.fromJson(Map m1) {
    return Eng(
      official: m1['official'],
      common: m1['common'],
    );
  }
}

class Currencies {
  SHPClass? SHP;

  Currencies({required this.SHP});

  factory Currencies.fromJson(Map m1) {
    return Currencies(
      SHP: SHPClass.fromJson(m1['SHP']),
    );
  }
}

class SHPClass {
  String? name, symbol;

  SHPClass({
    required this.name,
    required this.symbol,
  });

  factory SHPClass.fromJson(Map m1) {
    return SHPClass(
      name: m1['name'],
      symbol: m1['symbol'],
    );
  }
}

class Flags {
  String? png, svg;

  Flags({
    required this.png,
    required this.svg,
  });

  factory Flags.fromJson(Map m1) {
    return Flags(
      png: m1['png'],
      svg: m1['svg'],
    );
  }
}
