import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer_effect/constants/state_data.dart';
import 'package:shimmer_effect/constants/status.dart';
import 'package:shimmer_effect/model/smartphone_model.dart';
import 'package:shimmer_effect/repo/smartphone_repo.dart';

final getSmartphoneController = StateNotifierProvider((ref) =>
    SmartphoneController(
        GenericState<SmartphoneModel>.loading(SmartphoneModel())));

class SmartphoneController
    extends StateNotifier<GenericState<SmartphoneModel>> {
  SmartphoneController(super.state);

  getSmartphone() async {
    final response = await SmartphoneRepo().fetchAllProduct();
    if (response != null) {
      state = state.copyWith(status: Status.success, data: response);
    } else {
      state =
          state.copyWith(status: Status.error, errorMessage: "No data found");
    }
  }
}
