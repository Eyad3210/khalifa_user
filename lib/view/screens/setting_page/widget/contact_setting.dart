import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactSetting extends StatelessWidget {
  const ContactSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            IconSetting(
                url: "tel:+963946928978",
                color: Colors.grey,
                icon: FontAwesomeIcons.phone),
            IconSetting(
                url: "whatsapp://send?phone=+218919247183",
                color: Colors.green,
                icon: FontAwesomeIcons.whatsapp),
            IconSetting(
                url: "whatsapp://send?phone=+218919247183",
                color: Colors.blue,
                icon: FontAwesomeIcons.facebook),
          ],
        ),

        
      ],
    );
  }
}

class IconSetting extends StatelessWidget {
  const IconSetting(
      {super.key, required this.url, required this.color, required this.icon});
  final String url;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        launch(url);
      },
      child: Container(
        height: size.height * 0.05,
        width: size.height * 0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Icon(icon,color: Colors.white,),
      ),
    );
  }
}
