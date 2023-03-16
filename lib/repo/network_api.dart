import 'dart:developer';

import 'package:dio_client/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_effect/constants.dart';
import 'package:shimmer_effect/model/product_model.dart';

class NetworkApi extends ChangeNotifier {
  DioClient dioClient = DioClient(baseUrl: baseUrl);

  late final Object getProductList;
  Future<Object> getProduct() async {
    try {
      final response = await dioClient.getRequest(path: '/products');
      if (response.statusCode == 200) {
        getProductList = ProductModel.fromJson(response.data);
      }
    } catch (e) {
      log('Error while fetching profile: ${e.toString()}');
    }
    return getProductList;
  }

  // getProductList(BuildContext context) async {
  //   final response =
  //       await Provider.of<NetworkApi>(context, listen: false).getProduct();
  //   if (response is ProductModel) {
  //     return response;
  //   }
  // }
}
