import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:qtec_work_demo/model/ProductDetails.dart';

import '../model/products.dart';

class ProductServices {

  Future<ProductSearch?> getProducts(int pageNumber) async {
    String apiUrl =
        "https://panel.supplyline.network/api/product/search-suggestions/?limit=50&offset=${pageNumber * 10}";
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


  Future<ProductDetails?> getProductDetails(String slugName) async {
    String apiUrl =
        "https://panel.supplyline.network/api/product-details/${slugName}";
    try {
      var response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return ProductDetails.fromJson(
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
