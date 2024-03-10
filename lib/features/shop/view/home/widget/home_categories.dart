import 'package:e_commerce/common/widget/image_text/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
