import 'package:getx_tdd/core/resources/data_state.dart';
import 'package:getx_tdd/core/usecase/use_case.dart';
import 'package:getx_tdd/features/products/data/model/product_model.dart';
import 'package:getx_tdd/features/products/data/repository/product_service_impl.dart';
import 'package:getx_tdd/features/products/domain/repository/product_repository.dart';

class FetchProductUseCase extends UseCase<DataState<List<UserModel>>> {
  @override
  Future<DataState<List<UserModel>>> call() {
    ProductRepository productRepository = ProductRepositoryImpl();
    return productRepository.getProduct();
  }
}
