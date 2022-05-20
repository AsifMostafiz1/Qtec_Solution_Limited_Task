import 'package:flutter/material.dart';
import 'package:qtec_work_demo/model/ProductDetails.dart';
import '../services/product_services.dart';


class ProductDetailsProvider extends ChangeNotifier{
  ProductDetails? productDetails;
  bool isLoading = false;
  bool showCartButtonStatus = false;

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


  showCartButton(){
    showCartButtonStatus = true;
    notifyListeners();
  }

  resetCartButton(){
    showCartButtonStatus = false;
    cartItemValue = 0;
    notifyListeners();
  }



  getProductDetails(String slugName)async{
    isLoading = true;
    productDetails = (await ProductServices().getProductDetails(slugName))!;
    isLoading = false;
    notifyListeners();
  }

}