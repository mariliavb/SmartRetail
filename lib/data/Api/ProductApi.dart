import 'dart:async';
import 'package:smart_retail/utils/constants/constantsAPI.dart';
import 'dart:convert';
import 'package:smart_retail/utils/httpHelper/http_helper.dart' as http;

class ProductApi {
  static Future getProductList() async {
    var url = ConstantsAPI.BASE_URL_MOCK + "" + ConstantsAPI.PRODUCT_LIST_MOCK;

    Map map = {
      "IdEntrega": 0,
      "IdTipoProduto": 0,
      "IdVitrine": null,
      "ListaIdCategoria": [1880],
      "ListaIdEncarte": [],
      "NomeProdutoPesquisaStr": "",
      "NomeProdutoStr": "",
      "OrdemSecao": 0
    };

    var body = JsonEncoder().convert(map);

    var response = await http.post(url, body);

    print('Url: $url');
    print(': ${response.statusCode}');
    print('Response body ConsultProductApi: ${response.body}');

    return json;
  }
}
