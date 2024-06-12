import '../../../../common/widget/app_bar/app_bar.dart';
import '../../../../common/widget/image/circular_image.dart';
import '../../../../common/widget/texts/section_heading.dart';
import 'widget/profile_menu.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Profile'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MySize.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const CircularImage(
                      image: MyImages.user, width: 80, height: 80),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture')),
                ],
              ),
            ),
            const SizedBox(height: MySize.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems),
            const SectionHeading(
                title: 'Profile Information', showActionButton: false),
            const SizedBox(height: MySize.spaceBtwItems),
            ProfileMenu(onTap: () {}, value: 'Top Fashion', title: 'name'),
            ProfileMenu(onTap: () {}, value: 'Top Fashion', title: 'userName'),
            const SizedBox(height: MySize.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems),
            ProfileMenu(
                onTap: () {},
                value: '456789',
                title: 'User ID',
                icon: Iconsax.copy),
            ProfileMenu(
                onTap: () {},
                value: 'Mohamedmedo9932@gmail.com',
                title: 'E-mail'),
            ProfileMenu(
                onTap: () {}, value: 'Phone number', title: '+201149060781'),
            ProfileMenu(onTap: () {}, value: 'Male', title: 'Gender'),
            ProfileMenu(
                onTap: () {}, value: 'Date Of birth', title: '17 July, 2002 '),
            const SizedBox(height: MySize.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: MySize.spaceBtwItems / 3),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
