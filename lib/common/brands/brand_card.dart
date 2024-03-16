import 'package:e_commerce/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widget/image/circular_image.dart';
import 'package:e_commerce/features/shop/view/store/Widget/brand_title_with_verification_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    this.showBorder = true,
  });

  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);

    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(MySize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: MyImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? MyColors.white : MyColors.black,
              ),
            ),
            const SizedBox(width: MySize.spaceBtwItems / 2),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerification(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
