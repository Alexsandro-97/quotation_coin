import 'package:cotation_coin/enums/coins_enum.dart';

class QuotationModel {
  final CoinsEnum baseCurrency;
  final CoinsEnum quotedCurrency;
  final double purchasePrice;

  QuotationModel({
    required this.baseCurrency,
    required this.quotedCurrency,
    required this.purchasePrice,
  });

  factory QuotationModel.fromJson(data) {
    return QuotationModel(
      baseCurrency: Coins.parse(data['codein']),
      quotedCurrency: Coins.parse(data['code']),
      purchasePrice: double.parse(data['bid']),
    );
  }
}
