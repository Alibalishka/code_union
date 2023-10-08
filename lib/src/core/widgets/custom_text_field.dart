import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/resources/app_paddings.dart';
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
      placeholderStyle: const TextStyle(
        color: AppColors.gray2Color,
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      style: const TextStyle(
        color: AppColors.blacColor,
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      obscureText: isPassword,
      controller: controller,
      padding: AppPaddings.horizontalVerical,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
      ),
    );
  }
}
