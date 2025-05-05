import 'package:get/get.dart';
import 'package:get_x_sample/model/product_model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "نوشابه", off: "50", price: "500").obs;
}