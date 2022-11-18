import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../logic/controllers/translate_controller.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final GetStorage boxStorage = GetStorage();
    final controller = Get.put(MyLocaleController());
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: boxStorage.read("language"),
          iconSize: 20.sp,
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          items: [
            DropdownMenuItem(
              value: "en",
              child: Text(
                "english".tr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
            DropdownMenuItem(
              value: "ar",
              child: Text(
                "arabic".tr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
          onChanged: (value) {
            controller.changeLanguage(value!);
            Get.updateLocale(Locale(value));
          },
        ),
      ),
    );
  }
}
