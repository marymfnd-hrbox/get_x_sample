import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/controller/product_getbuilder_unique_id_controller.dart';

class ProductScreenGetBuilderUniqueId extends StatelessWidget {
  const ProductScreenGetBuilderUniqueId({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: ListView.builder(
          itemCount: 20,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: (() {
                Get.find<ProductGetBuilderUniqueIdController>().setNewProduct(index);
              }),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: GetBuilder<ProductGetBuilderUniqueIdController>(
                      id: index,
                      init: ProductGetBuilderUniqueIdController(),
                      builder:
                          (ProductGetBuilderUniqueIdController productController) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "product name: ${productController.productModel.name}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "product price: ${productController.productModel.price}",
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              "product off: ${productController.productModel.off}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            );
          }),
        )));
  }
}
