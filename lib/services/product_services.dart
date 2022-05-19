import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/products.dart';

class ProductServices {
  // final queryParameter ={
  //   'limit':'10',
  //   'offset': (1*10).toString()
  // };

  Future<ProductSearch?> getProducts(int pageNumber) async {
    String apiUrl =
        "https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=${pageNumber * 10}";
    try {
      var response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return ProductSearch.fromJson(
          jsonDecode(
            utf8.decode(response.bodyBytes),
          ),
        );
      } else {
        throw "${response.statusCode}";
      }
    } catch (e) {
      rethrow;
    }
  }
}
