import 'package:e_commerce/features/shop/model/product_model/product_model.dart';

import '../../../../common/widget/app_bar/app_bar.dart';
import '../../../../common/widget/icons/circular_icon.dart';
import '../../../../common/widget/layout/grid_layout.dart';
import '../../../../common/widget/products/products_card/products_cards_vertical.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            backgroundColor: Colors.transparent,
            icon: Iconsax.add,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 5,
                itemBuilder: (context, index) => ProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
