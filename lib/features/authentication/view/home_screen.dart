import 'package:e_commerce/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widget/image_text/vertical_image_text.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/home/widget/home_appbar.dart';
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
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App bar With cart icon , title and subtitle
                  const HomeAppbar(),
                  const SizedBox(height: MySize.spaceBtwSections),

                  //searchbar
                  const SearchContainer(text: 'Search In The Store'),
                  const SizedBox(height: MySize.spaceBtwSections),

                  //  -- categories

                  Padding(
                    padding: const EdgeInsets.only(left: MySize.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Heading
                        const SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        const SizedBox(height: MySize.spaceBtwItems),

                        //Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (_, index) {
                                return VerticalImageText(
                                  onTap: () {},
                                  title: 'shoes',
                                  image: MyImages.sportIcon,
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
