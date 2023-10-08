import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CupertinoButton(
        color: AppColors.purpleColor,
        onPressed: onPressed,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
