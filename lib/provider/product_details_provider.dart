import 'package:flutter/material.dart';
import 'package:qtec_work_demo/model/ProductDetails.dart';
import '../services/product_services.dart';


class ProductDetailsProvider extends ChangeNotifier{
  ProductDetails? productDetails;
  bool isLoading = false;


  getProductDetails(String slugName)async{
    isLoading = true;
    productDetails = (await ProductServices().getProductDetails(slugName))!;
    isLoading = false;
    notifyListeners();
  }

}