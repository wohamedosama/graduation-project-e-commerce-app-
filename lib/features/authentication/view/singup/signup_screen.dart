import 'package:e_commerce/common/widget/login_footer.dart';
import 'package:e_commerce/common/widget/my_divider.dart';
import 'package:e_commerce/features/authentication/view/singup/verify_email.dart';
import 'package:e_commerce/features/authentication/view/singup/widget/sign_up_button.dart';
import 'package:e_commerce/features/authentication/view/singup/widget/signup_form.dart';
import 'package:e_commerce/features/authentication/view/singup/widget/terms_condition.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: MySize.defaultSpace),

              //Form
              const SignUpForm(),
              const SizedBox(height: MySize.spaceBtwInputFields),

              //Terms & Conditions CheckBox
              const TermsAndCondition(),
              const SizedBox(height: MySize.spaceBtwSections),

              //Sign UP Button
              SignUpButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerifyEmailScreen()),
                );
              }),
              const SizedBox(height: MySize.spaceBtwSections),
              //Divider
              MyDivider(dividerText: MyTexts.orSignUpWith.toUpperCase()),
              const SizedBox(height: MySize.spaceBtwSections),

              //social Button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
