 import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class Custom extends ChangeNotifier{
 final List<ProductModel> _items = [];
  double price = 0.0;
  void add( ProductModel item) {
    _items.add(item);
    price += item.price;
    notifyListeners();
  }

  void remove( ProductModel item ) {
    _items.remove(item);
    price -= item.price;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalprice {
    return price;
  }

  List<ProductModel> get baskitem {
    return _items  ;
  }
  
}