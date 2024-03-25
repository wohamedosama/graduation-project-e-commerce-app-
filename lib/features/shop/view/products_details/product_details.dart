import 'package:e_commerce/features/shop/view/products_details/widget/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductsImageSlider(),
          ],
        ),
      ),
    );
  }
}
