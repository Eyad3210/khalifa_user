import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/routes/routes.dart';
import 'package:khalifa_user/view/screens/home_page/widget/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 15),
        child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {

              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CategoryCard(press: () {Get.toNamed(Routes.productScreen);}, name: "beef", image: "assets/test.jpg"),
              );
            }));
  }
}