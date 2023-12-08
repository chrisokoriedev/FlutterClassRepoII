import 'package:cocktailapp/model/cocktail_model.dart';
import 'package:cocktailapp/util/contants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final Dio _dio = Dio();
var apiurl = Contants.baseUrl;
class ApiHelper {
  static Future getDrinkList() async {
    try {
      var apiRequest = await _dio.get('${apiurl}Ordinary_Drink');
      if (apiRequest.statusCode == 200) {
        final dataRequest = apiRequest.data;
        CocktailModel dataModel = CocktailModel.fromJson(dataRequest);
        return dataModel;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
