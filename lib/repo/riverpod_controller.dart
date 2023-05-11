import 'dart:developer';

import 'package:dio_client/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer_effect/constants.dart';
import 'package:shimmer_effect/model/product_model.dart';

final getRiverpodProvider =
    StateNotifierProvider<RiverpodController, ProductModel?>((ref) {
  return RiverpodController();
});

class RiverpodController extends StateNotifier<ProductModel?> {
  RiverpodController() : super(null);

  DioClient dioClient = DioClient(baseUrl: baseUrl);
  getProducts() async {
    try {
      final response = await dioClient.getRequest(path: '/products');
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data != null) {
          state = ProductModel.fromJson(response.data);
          // Products.fromJson(response.data['products']);

          // value.add(state!.products as Products);
          log(state.toString(), name: 'value riverpod');
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
