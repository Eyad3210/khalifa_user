import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/main_controller.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return  Obx(
        () {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Container(),
              actions: [
            /*     Obx(
                  () => Badge(
                    position: BadgePosition.topEnd(top: 0, end: 3),
                    animationDuration: const Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      cartController.quantity().toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.cartScreen);
                      },
                      icon: Image.asset('assets/images/shop.png'),
                    ),
                  ),
                ), */
              ],
             // backgroundColor: Get.isDarkMode ? darkColor : mainColor,
              title: Text(controller.title[controller.currentIndex.value]),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,

              items:  [
                BottomNavigationBarItem(
                  activeIcon:const Icon(
                    Icons.home,
                  ),
                  icon: const Icon(
                    Icons.home,
                  ),
                  label: 'home'.tr,
                  
                ),
                BottomNavigationBarItem(

                  activeIcon: const Icon(
                    Icons.settings,
                  ),
                  icon:const  Icon(
                    Icons.settings,
                  ),
                  label: 'setting'.tr,
                  
                ),
               
              ],
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
            body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs,
            ),
          );
        },
      );
    
  }
}