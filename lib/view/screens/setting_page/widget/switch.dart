import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/logic/controllers/setting_controller.dart';

import '../../../../logic/controllers/theme_controller.dart';
import '../../../../utils/theme.dart';

class SwitchThemeWidget extends StatelessWidget {
  const SwitchThemeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingController());

    return GetBuilder<SettingController>(
        init: SettingController(),
        builder: (_) {
          return Switch(
            activeTrackColor: redColor,
            activeColor: redColor,
            value: controller.getSwitchValue(),
            onChanged: (value) {
              ThemeController().changesTheme();
              controller.switchTheme.value=value;
              controller.update();
              controller.saveSwitchValue(controller.switchTheme.value);

            // controller.changeTheme();
            },
          );
        });
  }
}
