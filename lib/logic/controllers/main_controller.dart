import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/home_page/home_page.dart';
import 'package:khalifa_user/view/screens/setting_page/setting_page.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [const HomePage(), const SettingPage()].obs;

  var title = ["ملحمة خليفة", "الاعدادت"].obs;
}
