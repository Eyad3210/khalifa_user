import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_utils.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.press, required this.name, required this.image})
      : super(key: key);

  final VoidCallback press;
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        
        width: size.width*0.25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.99), BlendMode.modulate)),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: TextUtils(
          fontSize: 20.sp,
          fontWeight: FontWeight.normal,
          text: name,
          color: Colors.white,
        ),
      ),
    );
  }
}
