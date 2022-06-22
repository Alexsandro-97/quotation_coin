// ignore_for_file: constant_identifier_names

enum CoinsEnum {
  BRL,
  USD,
  JPY,
  GBP,
  CAR,
}

class Coins {
  static CoinsEnum parse(String data) {
    switch (data) {
      case 'BRL':
        return CoinsEnum.BRL;
      case 'USD':
        return CoinsEnum.USD;
      case 'JPY':
        return CoinsEnum.JPY;
      case 'GBP':
        return CoinsEnum.GBP;
      case 'CAR':
        return CoinsEnum.CAR;
    }
    throw Exception('Enum $data não existe!');
  }
}
