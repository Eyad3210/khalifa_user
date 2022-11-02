import 'package:get/get.dart';
import 'package:khalifa_user/logic/controllers/product_controller.dart';

import '../controllers/main_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    
  }
}