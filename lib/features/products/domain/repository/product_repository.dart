import 'package:getx_tdd/features/products/data/model/product_model.dart';
import '../../../../core/resources/data_state.dart';

abstract class ProductRepository {
  Future<DataState<ProductModel>> getProduct();
}
