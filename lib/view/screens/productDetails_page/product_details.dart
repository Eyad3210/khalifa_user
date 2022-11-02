import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/productDetails_page/widget/all_details.dart';
import '../../widgets/custom_icon.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        buildImage(size),
        buildIconBack(),
        AllProductDetails(
            productCategory: "productCategory",
            descreption: "descreption",
            productNumber: 22,
            productUnit: "productUnit",
            productPrice: 500000,
            productName: "productName",
            size: size,
            productUnitName: "UnitName")
      ],
    ));
  }

  Positioned buildIconBack() {
    return Positioned(
        top: 70,
        left: 20,
        child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const CustomIcon(icon: Icon(Icons.arrow_back))));
  }

  Positioned buildImage(Size size) {
    return Positioned(
        left: 0,
        right: 0,
        child: Container(
          height: size.height /2.3,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/test.jpg'),
            fit: BoxFit.cover,
          )),
        ));
  }
}
