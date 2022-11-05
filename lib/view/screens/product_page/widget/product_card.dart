import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text_utils.dart';

class ProductCard extends StatelessWidget {
  //final ProductModel product;

  const ProductCard({
    Key? key,
    required this.category,
    required this.press,
  }) : super(key: key);
  final String category;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 0.1,
                  offset: Offset(0, 0.1),
                  spreadRadius: 0,
                )
              ]),
          child: LayoutBuilder(
            builder: (context,constraints) {
              return Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/test.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: TextUtils(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        text: "cordon blue",
                      ),
                    ),
                  ),
                  Container(color: Colors.grey[300],height: 1,width:constraints.maxWidth-20 ,),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: TextUtils(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        text: "50000 sp",
                        color: Colors.red[400]!,
                      ),
                    ),
                  ),
                ],
              );
            }
          ),
        ));
  }
}
