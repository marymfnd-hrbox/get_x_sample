import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/controller/product_getbuilder_controller.dart';

class ProductScreenGetBuilder extends StatelessWidget {
  const ProductScreenGetBuilder({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ProductGetBuilderController>(
              init: ProductGetBuilderController(),
              builder: (ProductGetBuilderController productController) {
                return Column(
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
              },
            ),
            ElevatedButton(
              onPressed: (() {
                Get.find<ProductGetBuilderController>().setNewProduct();
              }),
              child: Text("press"),
            ),
            ElevatedButton(
              onPressed: (() {
                Get.delete<ProductGetBuilderController>();
              }),
              child: Text("delete controller"),
            ),
          ],
        ),
      ),
    );
  }
}
