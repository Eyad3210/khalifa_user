import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:khalifa_user/logic/controllers/translate_controller.dart';
import 'package:khalifa_user/routes/routes.dart';
import 'package:khalifa_user/utils/theme.dart';
import 'package:khalifa_user/utils/translate.dart';

import 'logic/controllers/theme_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          final controller = Get.put(MyLocaleController());
          return GetMaterialApp(
              translations: MyLocale(),
              locale: controller.initLang,
              debugShowCheckedModeBanner: false,
              theme: ThemesApp.light,
              darkTheme: ThemesApp.dark,
              themeMode: ThemeController().themeDataGet,
              getPages: AppRoutes.routes,
              initialRoute: AppRoutes.mainSreen
              // home: App(),
              );
        });
  }
}
