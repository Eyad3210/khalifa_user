import 'package:flutter/material.dart';
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
            const SettingListTile(
                icon: Icons.dark_mode,
                color: Colors.red,
                title: "Dark mode",
                widget: SwitchThemeWidget()),
            SizedBox(height: size.height * 0.02),
            const SettingListTile(
                icon: Icons.language,
                color: Colors.blue,
                title: "Language",
                widget: LanguageWidget()),
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
