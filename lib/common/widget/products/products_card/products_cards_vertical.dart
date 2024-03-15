import 'package:e_commerce/common/styles/shadow.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widget/icon/circular_icon.dart';
import 'package:e_commerce/common/widget/image/round_image.dart';
import 'package:e_commerce/common/widget/texts/product-title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../texts/produts_price.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        height: 220,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySize.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            //Thumbnails, wishlist Button,Discount tag,
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MySize.sm),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  //Product Image
                  RoundedImage(
                    backgroundColor: dark ? MyColors.dark : MyColors.light,
                    imageUrl: MyImages.productImage1,
                    applyImageRadius: true,
                  ),
                  //Sale Tag
                  Positioned(
                    top: 10,
                    child: RoundedContainer(
                      radius: MySize.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MySize.sm, vertical: MySize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),
                  //Favorite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: MySize.spaceBtwItems / 2),

            //details
            Padding(
              padding: const EdgeInsets.all(MySize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                      text: 'Green Nike Air Shoe', smallSie: true),
                  const SizedBox(height: MySize.xs),
                  Row(
                    children: [
                      Text('Nike',
                          style: Theme.of(context).textTheme.labelMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1),
                      const SizedBox(width: MySize.xs),
                      const Icon(
                        Iconsax.verify5,
                        size: MySize.iconXs,
                        color: MyColors.primary,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                    padding: EdgeInsets.only(left: MySize.sm),
                    child: ProductPrice(price: '35.0')),
                Container(
                  decoration: const BoxDecoration(
                    color: MyColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MySize.cardRadiusMd),
                      bottomRight: Radius.circular(MySize.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    height: MySize.iconLg * 1.2,
                    width: MySize.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
