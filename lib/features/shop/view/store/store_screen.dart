import 'package:e_commerce/common/brands/brand_card.dart';
import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/app_bar/tabbar_bottom.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widget/layout/grid_layout.dart';
import 'package:e_commerce/common/widget/products/cart_counter_Icons.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/features/shop/view/store/Widget/category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? Colors.transparent : MyColors.white,
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
                      SectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: MySize.spaceBtwItems / 1.5),
                      GridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (context, index) => const BrandCard(),
                      ),
                    ],
                  ),
                ),
                bottom: const TabBarBottom(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronic')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Mohamed')),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs(),
              CategoryTabs()
            ],
          ),
        ),
      ),
    );
  }
}
