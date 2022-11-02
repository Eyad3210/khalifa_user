import 'package:flutter/material.dart';
import 'package:khalifa_user/utils/theme.dart';

class CustomIcon extends StatelessWidget {
final Icon icon;

  const CustomIcon({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12))
      ,
      color: Colors.white.withOpacity(0.7)
      ),
      padding: const EdgeInsets.all(12),
      child: Icon(icon.icon,color: mainColor),
    );
  }
}