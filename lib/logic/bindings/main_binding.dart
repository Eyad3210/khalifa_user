import 'package:get/get.dart';
import 'package:khalifa_user/logic/controllers/category_controller.dart';
import 'package:khalifa_user/logic/controllers/product_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(CategoryController());
    Get.put(ProductController());
    
  }
}