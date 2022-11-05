import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/home_page/widget/categories.dart';
import 'package:khalifa_user/view/screens/home_page/widget/discounts.dart';
import 'package:khalifa_user/view/screens/home_page/widget/search_field.dart';

import '../../widgets/text_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchField(size: size),
            SizedBox(
              height: 20.sp,
            ),
            myText("categories"),
            SizedBox(
              height: 20.sp,
            ),
            SizedBox(height: size * 0.2, child: const Categories()),
            const SizedBox(
              height: 20,
            ),
            myText("offers"),
            SizedBox(
              height: 20.sp,
            ),
            const Discounts(),
          ],
        ),
      ),
    );
  }

  Padding myText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextUtils(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            text: text.tr,
          ),
          Container(),
        ],
      ),
    );
  }
}

