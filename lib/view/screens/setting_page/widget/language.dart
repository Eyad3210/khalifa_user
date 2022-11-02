import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
     
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: "ene",
          iconSize: 20.sp,
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          items:  [
            DropdownMenuItem(
              value: "ene",
              child: Text(
                "English",
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            DropdownMenuItem(
              value: "ara",
              child: Text(
                "Arabic",
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,

                ),
              ),
            ),
          ],
          
          onChanged: (value) {
             //controller.changeLanguage(value!);
            Get.updateLocale(Locale("value"));
          },
        ),
      ),
    );
  }
}
