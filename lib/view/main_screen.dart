// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/controller/product_controller.dart';
import 'package:get_x_sample/view/product_screen.dart';

class MainScreen extends StatelessWidget {
  // var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  //Obx
  //GetX
  //GetBuilder


  ProductController productController = Get.put(
    ProductController()
    
    ) ;

  MainScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
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
                
                  val!.name = "چیتوز sss";
                  val.price = "10";
                  val.off = "50%";
              });
               
            }
            ), child: Text("press")),
          ElevatedButton(
            onPressed: (() {

             Get.to(ProductScreen());
               
            }
            ), child: Text("Go"))
        ],
      )),
    );
  }
}