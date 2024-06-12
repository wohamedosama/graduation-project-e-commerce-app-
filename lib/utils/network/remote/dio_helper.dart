import 'package:dio/dio.dart';
import 'package:e_commerce/features/shop/model/product_model/product_model.dart';
import 'package:e_commerce/utils/constants/api_constants.dart';
import 'package:flutter/material.dart';

class WebServices {
  late Dio dio;
  final List<ProductModel> products = [];
  WebServices() {
    BaseOptions options = BaseOptions(
      headers: {
        'Content-Type': 'application/json',
      },
      baseUrl: baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token = '',
  }) async {
    Response response = await dio.get(url, queryParameters: query);
    dio.options.headers = {
      'Authorization': 'Bearer ${response.data["token"]} ',
    };
    //debugPrint(token);
    return response;
  }

  Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    Response response = await dio.post(url, queryParameters: query, data: data);
    dio.options.headers = {
      'Authorization': 'Bearer ${response.data["token"]} ',
    };
    // debugPrint(token);
    return response;
  }
}
