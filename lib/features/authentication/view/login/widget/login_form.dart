import 'package:e_commerce/features/authentication/view/login/forget_password.dart';
import 'package:e_commerce/features/authentication/view/singup/signup_screen.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: MyTexts.email,
            ),
            autofocus: true,
          ),
          const SizedBox(height: MySize.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: MyTexts.password,
            ),
            autofocus: true,
          ),
          const SizedBox(height: MySize.spaceBtwInputFields / 2),

          //Remember me & forget Password

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(MyTexts.rememberMe),
                ],
              ),

              const SizedBox(height: MySize.spaceBtwSections),

              //forget Password
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                },
                child: const Text(MyTexts.forgetPassword),
              ),
            ],
          ),

          //sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationMenu()),
                  );
                },
                child: const Text(MyTexts.signIn)),
          ),
          const SizedBox(height: MySize.spaceBtwItems),

          //Create an Account
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: const Text(MyTexts.createAccount)),
          ),
          const SizedBox(height: MySize.spaceBtwSections),
        ],
      ),
    );
  }
}
