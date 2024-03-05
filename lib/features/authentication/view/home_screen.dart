import 'package:e_commerce/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/home/widget/home_appbar.dart';
import 'package:e_commerce/features/shop/view/home/widget/home_categories.dart';
import 'package:e_commerce/features/shop/view/home/widget/promo_slider.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App bar With cart icon , title and subtitle
                  HomeAppbar(),
                  SizedBox(height: MySize.spaceBtwSections),

                  //searchbar
                  SearchContainer(text: 'Search In The Store'),
                  SizedBox(height: MySize.spaceBtwSections),

                  //  -- categories

                  Padding(
                    padding: EdgeInsets.only(left: MySize.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Heading
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: MySize.spaceBtwItems),

                        //Categories
                        HomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(MySize.defaultSpace),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MySize.md),
                ),
                child: const PromoSlider(banners: [
                  MyImages.banner4,
                  MyImages.banner7,
                  MyImages.banner1
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
