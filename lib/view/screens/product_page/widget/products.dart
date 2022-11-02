import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/productDetails_page/product_details.dart';
import 'package:khalifa_user/view/screens/product_page/widget/product_card.dart';

class Products extends StatelessWidget {
  const Products({Key? key, required this.category}) : super(key: key);

  final String category;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => GridView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: constraints.biggest.aspectRatio * 3 / 1.9,
            mainAxisSpacing: 18,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) => ProductCard(
                category: 'eyad',
                press: () {
                  Get.to(() => const ProductDetailsPage(),);
                },
              )),
    );
  }
}
