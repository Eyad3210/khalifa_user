import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/home_page/home_page.dart';
import 'package:khalifa_user/view/screens/setting_page/setting_page.dart';
import 'package:khalifa_user/view/screens/video_page/video_page.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [const HomePage(),const VideoPage(),const SettingPage()].obs;

  List<String> title = ["khalifa".tr,"videos".tr,"setting".tr].obs;
}
