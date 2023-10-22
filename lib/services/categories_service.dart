import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServive {
  Future<List<ProductModel>> getAllProducts({required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

      List<ProductModel> proudectList = [];

      for (int i = 0; i < data.length; i++) {
        proudectList.add(ProductModel.fromJson(data[i]));
      }
      return proudectList;
    } 
  }
