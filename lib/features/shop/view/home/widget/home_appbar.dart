import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/products/cart_counter_Icons.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/network/local/cache_helper.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(MyTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: MyColors.grey)),
          Text('Mohamed Osama',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: MyColors.white)),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {
            CacheHelper.removeData(key: 'token');
          },
          iconColor: MyColors.white,
        ),
      ],
    );
  }
}
