import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widget/image/circular_image.dart';
import 'package:e_commerce/common/widget/products/cart_counter_Icons.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
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
        actions: [
          CartCounterIcon(
            onPressed: () {},
          )
        ],
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
                    RoundedContainer(
                      padding: const EdgeInsets.all(MySize.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //Icon
                          CircularImage(dark: dark)
                        ],
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
