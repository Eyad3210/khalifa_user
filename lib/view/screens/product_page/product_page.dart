import 'package:flutter/material.dart';

import 'package:khalifa_user/view/screens/product_page/widget/products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      title: const Text("category"),
    ),
      body: const Products(category: 'eyad'),
    );
  }
}
