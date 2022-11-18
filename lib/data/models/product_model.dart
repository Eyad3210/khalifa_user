import 'dart:convert';

class ProductModel {
  String ?name;
  String ?image;
  int ?price;
  String ?description;
  String ?typeUnit;

  ProductModel(
      {this.name, this.image, this.price, this.description, this.typeUnit});

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
    description = json['description'];
    typeUnit = json['typeUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['description'] = this.description;
    data['typeUnit'] = this.typeUnit;
    return data;
  }
}