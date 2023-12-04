import 'package:get/get.dart';
import 'package:getx_tdd/core/resources/data_state.dart';
import 'package:getx_tdd/features/products/domain/usecase/fetch_product_use_case.dart';

import '../../data/model/product_model.dart';

class ProductController extends GetxController {
  RxBool loader = false.obs;
  FetchProductUseCase fetchProductUseCase = FetchProductUseCase();
  Rx<ProductModel>? productModel;

  getProduct() async {
    loader.value = true;
    try {
      var dataState = await fetchProductUseCase();

      if (dataState is DataSuccess && dataState.data != null) {
        productModel = dataState.data!.obs;
        loader.value = false;
      }
    } catch (error) {
      // Handle error
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
