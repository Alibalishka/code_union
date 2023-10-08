import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/resources/app_paddings.dart';
import 'package:code_union/src/core/widgets/alert.dart';
import 'package:flutter/material.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppAlertWidgets.customConfirmDialog(context),
      child: Container(
        color: AppColors.whiteColor,
        child: const Padding(
          padding: AppPaddings.horizontalVericalProfile,
          child: Text(
            'Выйти',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.redColor,
              fontFamily: 'Manrope',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
