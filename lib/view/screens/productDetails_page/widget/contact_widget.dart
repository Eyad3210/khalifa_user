import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/text_utils.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({required this.width, super.key, required this.height});
  final double width;
    final double height;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height*0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextUtils(
            fontSize: 15.sp,
            fontWeight: FontWeight.normal,
            text: "contact us",
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  ),
              onPressed: () {
                launch("tel:+963946928978");
              },
              icon: const FaIcon(FontAwesomeIcons.phone),
              label: const Text("phone")),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  )
                  ,
              onPressed: () {
                launch("whatsapp://send?phone=+218919247183");
              },
              icon: const FaIcon(FontAwesomeIcons.whatsapp),
              label: const Text("whatsapp")),
        ],
      ),
    );
  }
}
