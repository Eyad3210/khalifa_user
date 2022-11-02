import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khalifa_user/view/widgets/text_utils.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile(
      {super.key,
      required this.icon,
      required this.color,
      required this.title,
      required this.widget});
  final IconData icon;
  final Color color;
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
      child: ListTile(
        trailing: widget,
        title: TextUtils(
            fontSize: 15.sp,
            fontWeight: FontWeight.normal,
            text: title,),
        leading: Container(
          height: size.width*0.12,
          width: size.width*0.12,
          decoration: BoxDecoration(
            color: color.withOpacity(0.09),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
