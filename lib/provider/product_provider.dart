import 'package:flutter/material.dart';
import '../model/products.dart';
import '../services/product_services.dart';


class ProductProvider extends ChangeNotifier{
  ProductSearch? product;
  bool isLoading = false;
  TextEditingController searchController = TextEditingController();
  List<Results> resultList = [];
  List<Results> searchResultList = [];


  int cartItemValue = 0;
  int page =0;

  int getCartItem()=> cartItemValue;

  pageIncrement(){
    page++;
    notifyListeners();
  }

  getProduct()async{
    isLoading = true;
    product = (await ProductServices().getProducts(page))!;
    resultList = product!.data!.products!.results!;
    searchResultList = resultList;
    isLoading = false;
    notifyListeners();
  }


  onChanged(){
    searchResultList = resultList
        .where((element) => element.brand!.slug!
        .startsWith(searchController.text.toLowerCase()))
        .toList();
    notifyListeners();
  }

  cartItemIncrement(){
    cartItemValue++;
    notifyListeners();
  }

  cartItemDecrement(){
    cartItemValue--;
    notifyListeners();
  }

}