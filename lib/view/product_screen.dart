import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/controller/product_controller.dart';

class ProductScreen extends StatelessWidget{

  ProductController productController = Get.put(ProductController());

  ProductScreen({super.key});
 
  @override
  Widget build(Object context) {
    return Scaffold(
        backgroundColor: Colors.blue,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx((() {
            return Column(
              children: [
                Text(
                  "product name: ${productController.productModel.value.name}",
                  style: const TextStyle(fontSize: 20),
                ),
                
                Text(
                  "product price: ${productController.productModel.value.price}",
                  style: const TextStyle(fontSize: 20),
                ),                
                Text(
                  "product off: ${productController.productModel.value.off}",
                  style: const TextStyle(fontSize: 20),
                ),


              ],
            );
          })),
          ElevatedButton(
            onPressed: (() {

              productController.productModel.update((val) {
                
                  val!.name = "لواشک دربند";
                  val.price = "10";
                  val.off = "50%";
              });
               
            }
            ), child: Text("press")),
          ElevatedButton(
            onPressed: (() {

                Get.back();
               
            }
            ), child: Text("back")),
        ],
      )),
    );
  }
}