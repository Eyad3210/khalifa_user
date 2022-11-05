import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/productDetails_page/widget/all_details.dart';
import '../../widgets/custom_icon.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        body: Column(
          children: [
            buildImage(),
            const AllProductDetails(
                productCategory: "productCategory",
                descreption: "descreption",
                productNumber: 22,
                productUnit: "productUnit",
                productPrice: 500000,
                productName: "productName",
                productUnitName: "UnitName")
          ],
        ));
  }

  Positioned buildIconBack() {
    return Positioned(
        top: 70.w,
        left: 20.w,
        child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomIcon(
                  icon: Icon(Icons.arrow_back),
                ),
                Container(),
              ],
            )));
  }

  Widget buildImage() {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/test.jpg'),
                  fit: BoxFit.fill,
                )),
          ),
          buildIconBack()
        ],
      ),
    );
  }
}
