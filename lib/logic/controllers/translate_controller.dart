import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyLocaleController extends GetxController {
  @override
  void onInit() {
    setLang();
    super.onInit();
  }

  final GetStorage boxStorage = GetStorage();

  final key = "language";
  Locale? initLang;
  void setLang() {
    if (boxStorage.read(key) == "ar") {
      initLang = const Locale("ar");
    } else {
      initLang = const Locale("en");
    }
  }

  void changeLanguage(String lang) {
    Locale locale = Locale(lang);
    boxStorage.write(key, lang);
    Get.updateLocale(locale);
    print(lang);
  }
}
 /* if (box.get("lang") == "ar") {
                            const Locale("en");
                            controller.changeLanguage("en");
                          } else {
                            const Locale("ar");
                            controller.changeLanguage("ar");
                          }
                        }, */