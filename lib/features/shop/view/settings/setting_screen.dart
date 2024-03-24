import 'package:e_commerce/common/widget/app_bar/app_bar.dart';
import 'package:e_commerce/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce/common/widget/list_tiles/user_Profile_Settings.dart';
import 'package:e_commerce/common/widget/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/view/profile/profile.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/list_tiles/setting_menu.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

//Todo delete some icons depend on API calls and methods
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
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: MyColors.white)),
                  ),
                  UserProfileSettings(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      );
                    },
                  ),
                  const SizedBox(height: MySize.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MySize.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: MySize.spaceBtwItems),
                  SettingMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My orders',
                      subTitle: 'In-progress and complete orders',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'withdraw balance to registered bank account ',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons ',
                      subTitle: 'List of all the discount coupons',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notification',
                      subTitle: 'set any kind of notifications message',
                      onTap: () {}),
                  SettingMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connection ',
                      onTap: () {}),
                  const SizedBox(height: MySize.spaceBtwSections),
                  const SectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: MySize.spaceBtwItems),
                  const SettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your cloud firebase',
                  ),
                  SettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocator',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search Result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality ',
                    subTitle: 'set Image Quality to be seen ',
                    trailing: Switch(value: false, onChanged: (value) {}),
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
