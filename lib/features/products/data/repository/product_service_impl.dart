import 'dart:io';

import 'package:getx_tdd/core/resources/data_state.dart';
import 'package:getx_tdd/features/products/data/data_sources/product_api_services.dart';
import 'package:getx_tdd/features/products/data/model/product_model.dart';
import 'package:getx_tdd/features/products/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<DataState<List<UserModel>>> getProduct() async {
    try {
      List<UserModel>? productModel = await ProductApiServices.getProductFromAPi();
      return DataSuccess(productModel!);
    } on HttpException catch (e) {
      return DataFailed(e);
    }
  }
}
