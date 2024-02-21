import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/common/widget/login_footer.dart';
import 'package:e_commerce/common/widget/my_divider.dart';
import 'package:e_commerce/features/authentication/view/login/widget/login_form.dart';
import 'package:e_commerce/features/authentication/view/login/widget/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: MySize.spaceBtwSections),
            child: Column(
              children: [
                //Logo ,Title, SubTitle
                const LoginHeader(),
                const SizedBox(height: MySize.spaceBtwSections),
                //Create a Form
                const LoginForm(),
                //Divider
                MyDivider(dividerText: MyTexts.orSignInWith.toUpperCase()),
                const SizedBox(height: MySize.spaceBtwSections),
                //Footer
                const SocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
