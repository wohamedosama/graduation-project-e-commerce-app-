// ignore_for_file: must_be_immutable

import 'package:e_commerce/features/shop/model/cubit/product_cubit.dart';
import 'package:e_commerce/features/shop/model/product_model/product_model.dart';
import 'package:e_commerce/features/shop/model/repo.dart';
import 'package:e_commerce/utils/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/widget/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/container/search_container.dart';
import '../../../../common/widget/layout/grid_layout.dart';
import '../../../../common/widget/products/products_card/products_cards_vertical.dart';
import '../../../../common/widget/texts/section_heading.dart';
import 'widget/home_appbar.dart';
import 'widget/home_categories.dart';
import 'widget/promo_slider.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                        SearchContainer(
                          text: 'Search In The Store',
                        ),
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
                        SizedBox(height: MySize.spaceBtwSections * 1.5),
                      ],
                    ),
                  ),

                  //Body
                  Padding(
                    padding: const EdgeInsets.all(MySize.defaultSpace),
                    child: Column(
                      children: [
                        //Promo Slider
                        const PromoSlider(
                          banners: [
                            MyImages.banner4,
                            MyImages.banner7,
                            MyImages.banner1
                          ],
                        ),
                        const SizedBox(height: MySize.spaceBtwItems),

                        //Heading
                        SectionHeading(
                            title: 'Popular Products', onPressed: () {}),
                        const SizedBox(height: MySize.spaceBtwItems),

                        //Popular Products
                        GridLayout(
                          itemCount: 10,
                          itemBuilder: (_, index) =>
                              const ProductCardVertical(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
