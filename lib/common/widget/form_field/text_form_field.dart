import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    this.onFieldSubmitted,
    this.isPassword = false,
    this.suffixIcon,
    this.suffixPressed,
    required this.prefixIcon,
    required this.textInputType,
    required this.controller,
    required this.labelText,
    this.isClickable = true,
  });

  final void Function(String)? onFieldSubmitted;
  final IconData? suffixIcon;
  final bool isPassword;
  final void Function()? suffixPressed;
  final Icon prefixIcon;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String labelText;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      enabled: isClickable,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffixIcon),
              )
            : null,
        prefixIcon: prefixIcon,
        labelText: labelText,
      ),
      obscureText: isPassword,
      autofocus: true,
    );
  }
}
//(value) {
//         if (formKey.currentState!.validate()) {
//           LoginCubit.get(context).userLogin(
//             email: emailController.text,
//             password: passwordController.text,
//           );
//         }
//       },
