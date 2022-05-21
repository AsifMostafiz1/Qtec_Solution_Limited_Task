import 'package:flutter/material.dart';
import '../model/products.dart';
import '../services/product_services.dart';


class ProductProvider extends ChangeNotifier{
  ProductSearch? product;
  bool isLoading = false;
  TextEditingController searchController = TextEditingController();
  List<Results> resultList = [];
  List<Results> searchResultList = [];

  int page =0;

  int  getPageNumber ()=> page+1;

  int selectIndex=-1;

  int cartItemValue = 0;



  cartItemIncrement(){
    if(cartItemValue<10){
      cartItemValue++;
      notifyListeners();
    }
  }

  cartItemDecrement(){
    if(cartItemValue>0){
      cartItemValue--;
      notifyListeners();
    }
  }

  void setIndex(int index){
    selectIndex=index;
    notifyListeners();
  }

  pageIncrement(){
    if(page<11){
      page++;
      notifyListeners();
    }
  }

  pageDecrement(){
    if(page>0){
      page--;
      notifyListeners();
    }
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



}