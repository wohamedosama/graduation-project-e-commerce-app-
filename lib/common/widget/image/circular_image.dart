import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      padding: const EdgeInsets.all(MySize.sm),
      decoration: BoxDecoration(
        color: dark ? MyColors.dark : MyColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        MyImages.clothIcon,
        color: dark ? MyColors.white : MyColors.dark,
      ),
    );
  }
}
