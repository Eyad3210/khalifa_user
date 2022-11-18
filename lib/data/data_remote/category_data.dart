import '../../services/crud.dart';

class CategoryData {
  Crud crud;
  CategoryData(this.crud);
  getData() async {
    var response = await crud.getRequest("AppLink.items", {});
    return response.fold((l) => l, (r) => r);
  }
}