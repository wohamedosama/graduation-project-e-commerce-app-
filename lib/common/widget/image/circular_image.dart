import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = MySize.sm,
    this.backgroundColor,
    this.overlayColor,
    this.isNetworkImage = false,
    required this.image,
    this.fit = BoxFit.cover,
  });

  final double width, height, padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final bool isNetworkImage;
  final String image;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
          fit: fit,
        ),
      ),
    );
  }
}
//dark ? MyColors.dark : MyColors.white,
