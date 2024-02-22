import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: MyColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              MyImages.google,
              width: MySize.iconMd,
              height: MySize.iconMd,
            ),
          ),
        ),
        const SizedBox(width: MySize.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: MyColors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              MyImages.facebook,
              width: MySize.iconMd,
              height: MySize.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
