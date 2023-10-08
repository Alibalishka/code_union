import 'package:auto_route/auto_route.dart';
import 'package:code_union/src/core/utils/hive_init.dart';
import 'package:code_union/src/features/app/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAlertWidgets {
  static Future<dynamic> customAlert(BuildContext context, String text) {
    return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Theme(
        data: ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(
            "Вниимание",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                ),
          ),
          content: Text(text),
          actions: [
            GestureDetector(
                onTap: () => context.router.pop(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ok',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontFamily: 'Manrope'),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  static Future<dynamic> customConfirmDialog(BuildContext context) {
    return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Theme(
        data: ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(
            "Вниимание",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                ),
          ),
          content: Text(
            'Вы уверены что хотите выйти?',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                AppHive.clearData();
                context.router.replace(const LoginScreenRoute());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Да',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: 'Manrope'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => context.router.pop(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Нет',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: 'Manrope'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
