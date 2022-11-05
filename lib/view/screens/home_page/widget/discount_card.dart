import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/theme.dart';
import '../../../widgets/text_utils.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 0.1,
              offset: Offset(0, 0.1),
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("assets/test.jpg"),
                          fit: BoxFit.cover)),
                ),
                /*  */
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextUtils(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      text: "offer friday sunday monday ",
                      color: Get.isDarkMode ? mainColor : mainColor,
                    ),
                  ),
                  TextUtils(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    text: "50000 "+"syp".tr,
                    color:
                      Colors.red[400]!,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextUtils(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                      text:
                          "15 جبنة + 15 لحمة+15  كبة ",
                      color: Colors.grey[600]!,
                    ),
                  ),
                  Container()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
