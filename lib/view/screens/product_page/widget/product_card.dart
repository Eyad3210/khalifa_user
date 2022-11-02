import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
    return GestureDetector
    (onTap: press,
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
          builder: (context, constrains) =>  Column(
            children: [
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.sp,vertical: 8.sp),
                  child: ClipRRect(
                    
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                   
                        child: Image.asset('assets/test.jpg',fit:BoxFit.cover,),
                  ),
                ),
              ),
               TextUtils(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  text: "cordon blue",
                ),
              
               const SizedBox(
                height: 8,
              ), 

              Container(color: Colors.grey[200],height: 1,width: constrains.maxWidth-20,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.sp,vertical: 8.sp),
                child: Center(
                  child: TextUtils(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      text: "50000 sp",
                      color:  Colors.red[400]!,
                    ),
                ),
              ),
            ],
          ),
      ),
    ));
  }
}
