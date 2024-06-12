// ignore_for_file: file_names

import 'package:e_commerce/common/widget/image/circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileSettings extends StatelessWidget {
  const UserProfileSettings({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
          image: MyImages.user, width: 50, height: 50, padding: 0),
      title: Text(
        'Mohamed Osama',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyColors.white),
      ),
      subtitle: Text(
        'mohamedmedo9322@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: Colors.white),
      ),
    );
  }
}
