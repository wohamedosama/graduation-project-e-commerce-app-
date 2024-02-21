import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
                  CustomAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(MyTexts.homeAppbarTitle,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: MyColors.grey)),
                        Text(MyTexts.homeAppbarSubTitle,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: MyColors.white)),
                      ],
                    ),
                    actions: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.shopping_bag),
                            color: MyColors.white,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: MyColors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(
                                          color: MyColors.white,
                                          fontSizeFactor: 0.8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
