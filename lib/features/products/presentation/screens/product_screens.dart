import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tdd/features/products/presentation/controller/product_controller.dart';

class ProductScreen extends GetView<ProductController> {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProductController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
      ),
      body: Obx(() {
        if(controller.loader.value){
          return const Center(child: CircularProgressIndicator(),);
        }else{
          return    ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: controller.productModel!.value.users!.length,
            itemBuilder: (_, index) {
              var data = controller.productModel!.value.users![index];
              return ListTile(
                title: Text("${data.email}"),
              );
            },
          );
        }

      }),
    );
  }
}
