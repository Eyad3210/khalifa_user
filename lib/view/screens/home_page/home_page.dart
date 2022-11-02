import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            categoriesText(),
             SizedBox(
              height: 20.sp,
            ),
            SizedBox(height: size * 0.15, child: const Categories()),
            const SizedBox(
              height: 20,
            ),
            offersText(),
             SizedBox(
              height: 20.sp,
            ),
            const Discounts(),
          ],
        ),
      ),
    );
  }

  Padding offersText() {
    return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextUtils(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                text: "Offers",
              ),
            ),
          );
  }

  Padding categoriesText() {
    return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextUtils(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                text: "Categories",
              ),
            ),
          );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 0.15,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.only(
            left: 15,
            right: 15,
            top: size*0.03
          ),
          child: SearchFormText(),
        ),
      ),
    );
  }
}
