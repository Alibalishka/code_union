import 'package:code_union/src/core/resources/app_colors.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Выйти',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: AppColors.redColor),
          ),
        ),
      ),
    );
  }
}
