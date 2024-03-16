import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widget/image/circular_image.dart';
import 'package:e_commerce/common/widget/layout/grid_layout.dart';
import 'package:e_commerce/common/widget/products/cart_counter_Icons.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/store/Widget/brand_title_with_verification_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [CartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? MyColors.black : MyColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MySize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: MySize.spaceBtwItems),
                    const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackGround: false,
                        padding: EdgeInsets.zero),
                    const SizedBox(height: MySize.spaceBtwSections),
                    SectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: MySize.spaceBtwItems / 1.5),
                    GridLayout(
                      mainAxisExtent: 80,
                      itemCount: 20,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: RoundedContainer(
                          padding: const EdgeInsets.all(MySize.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              //Icon
                              Flexible(
                                child: CircularImage(
                                  isNetworkImage: false,
                                  image: MyImages.clothIcon,
                                  backgroundColor: Colors.transparent,
                                  overlayColor:
                                      dark ? MyColors.white : MyColors.black,
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
