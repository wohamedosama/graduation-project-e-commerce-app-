import 'package:e_commerce/common/brands/brand_show_case.dart';
import 'package:e_commerce/common/widget/layout/grid_layout.dart';
import 'package:e_commerce/common/widget/products/products_card/products_cards_vertical.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(
            children: [
              const BrandShowCase(images: [
                MyImages.productImage11,
                MyImages.productImage12,
                MyImages.productImage13
              ]),
              const SizedBox(height: MySize.spaceBtwItems),
              SectionHeading(title: 'You might Like', onPressed: () {}),
              const SizedBox(height: MySize.spaceBtwItems),
              GridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
