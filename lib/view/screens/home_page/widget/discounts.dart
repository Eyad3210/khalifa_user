import 'package:flutter/material.dart';
import 'package:khalifa_user/view/screens/home_page/widget/discount_card.dart';

class Discounts extends StatelessWidget {
  const Discounts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 15);
        },
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const DiscountCard();
        });
  }
}
