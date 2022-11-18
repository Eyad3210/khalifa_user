import 'package:get/get.dart';
import 'package:khalifa_user/data/data_remote/category_data.dart';
import 'package:khalifa_user/services/crud.dart';
import 'package:khalifa_user/utils/statues_request.dart';

import '../../utils/handling_data.dart';

class CategoryController extends GetxController{

  List category=[];
  late StatusRequest statusRequest;
  CategoryData categoryData=CategoryData(Crud());

  getCategory() async {
    category.clear();
    statusRequest = StatusRequest.loading;
    var response = await categoryData.getData();
    print("============ Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        category.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
}