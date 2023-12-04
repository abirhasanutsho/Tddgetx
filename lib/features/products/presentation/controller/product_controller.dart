import 'package:get/get.dart';
import 'package:getx_tdd/core/resources/data_state.dart';
import 'package:getx_tdd/features/products/domain/usecase/fetch_product_use_case.dart';

import '../../data/model/product_model.dart';

class ProductController extends GetxController {
  RxBool loader = false.obs;
  FetchProductUseCase fetchProductUseCase = FetchProductUseCase();
  RxList<UserModel> productModel = RxList();

  getProduct() async {
    loader.value = true;
    try {
      fetchProductUseCase().then((dataState) {
        if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
          productModel.addAll(dataState.data!);
          loader.value = false;
        }
      });
    } catch (error) {
      loader.value = false;
    } finally {
      loader.value = false;
    }
  }

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }
}
