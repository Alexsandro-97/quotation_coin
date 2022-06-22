import 'dart:convert';

import 'package:cotation_coin/enums/coins_enum.dart';
import 'package:cotation_coin/models/quotation_model.dart';
import 'package:http/http.dart' as http;

class QuotationRepository {
  Future<List<QuotationModel>> getQuotation({
    required CoinsEnum baseCurrency,
    required List<CoinsEnum> quoted,
  }) async {
    final params =
        quoted.map((quoted) => '${quoted.name}-${baseCurrency.name}').join(',');
    final url = 'https://economia.awesomeapi.com.br/last/$params';
    final response = await http.get(Uri.parse(url));
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json.values.map(QuotationModel.fromJson).toList();
  }
}
