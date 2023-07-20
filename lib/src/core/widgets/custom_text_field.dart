import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;
  const CustomTextField({
    super.key,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      placeholderStyle: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: AppColors.gray2Color),
      obscureText: isPassword,
      controller: controller,
      padding: const EdgeInsets.all(19),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
      ),
    );
  }
}
