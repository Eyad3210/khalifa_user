import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:khalifa_user/view/screens/productDetails_page/widget/contact_widget.dart';
import '../../../../utils/theme.dart';
import '../../../widgets/text_utils.dart';

class AllProductDetails extends StatelessWidget {
  const AllProductDetails(
      {required this.productCategory,
      required this.descreption,
      required this.productNumber,
      required this.productUnit,
      required this.productPrice,
      required this.productName,
      required this.productUnitName,
      super.key});
  final String productName;
  final String productCategory;
  final int productPrice;
  final String productUnit;
  final String productUnitName;
  final int productNumber;
  final String descreption;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          /*   borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)) */
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          text: productName,
                        ),
                        TextUtils(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal,
                          text: productCategory,
                          color: Colors.red[400]!,
                        )
                      ],
                    ),
                    TextUtils(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.normal,
                      text: productPrice.toString(),
                      color: Colors.red[400]!,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: size.height * 0.05,
                width: size.width,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: TextUtils(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                  text: "$productUnitName : $productNumber $productUnit",
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: size.height * 0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      text: "description".tr,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                      child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "egiufhiehfjnfkrnoheuwdkbwudhikwhfkehfjeoekihjoejiefkhewkjfpeujfheihieuufjohi",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              ContactWidget(
                width: size.width,
                height: size.height,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
