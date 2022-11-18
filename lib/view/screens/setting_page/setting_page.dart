import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/setting_page/widget/contact_setting.dart';
import 'package:khalifa_user/view/screens/setting_page/widget/language.dart';
import 'package:khalifa_user/view/screens/setting_page/widget/list_tile.dart';
import 'package:khalifa_user/view/screens/setting_page/widget/switch.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SettingListTile(
                icon: Icons.dark_mode,
                color: Colors.red,
                title: "darkmode".tr,
                widget: const SwitchThemeWidget()),
            SizedBox(height: size.height * 0.02),
            SettingListTile(
                icon: Icons.language,
                color: Colors.blue,
                title: "language".tr,
                widget: const LanguageWidget()),
            SizedBox(height: size.height * 0.02),
            const Divider(
              thickness: 1,
            ),
            SizedBox(height: size.height * 0.02),
            const ContactSetting(),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
