import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/main_page/main_page.dart';
import 'package:khalifa_user/view/screens/productDetails_page/product_details.dart';
import 'package:khalifa_user/view/screens/product_page/product_page.dart';

import '../logic/bindings/main_binding.dart';
import '../logic/bindings/product_binding.dart';

class AppRoutes {
  //initialRoute

  static const welcome = Routes.welcomeScreen;
  static const mainSreen = Routes.mainScreen;
  //getPages

  static final routes = [
    /*   GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ), */

    GetPage(
      name: Routes.mainScreen,
      page: () => MainPage(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: Routes.productScreen,
      page: () => const ProductPage(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.productDetailsScreen,
      page: () => const ProductDetailsPage(),
      binding: ProductBinding(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const mainScreen = '/mainScreen';
  static const productScreen = '/productScreen';
  static const productDetailsScreen = '/productDetailsScreen';
}
