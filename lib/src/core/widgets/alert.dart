import 'package:auto_route/auto_route.dart';
import 'package:code_union/src/features/app/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class AppAlertWidgets {
  static Future<dynamic> customAlert(BuildContext context, String text) {
    return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Вниимание"),
        content: Text(text),
        actions: [
          GestureDetector(
              onTap: () => context.router.pop(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ok',
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }

  static Future<dynamic> customConfirmDialog(BuildContext context) {
    return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Вниимание"),
        content: const Text('Вы уверены что хотите выйти?'),
        actions: [
          GestureDetector(
            onTap: () {
              Box tokenBox = Hive.box('token');
              tokenBox.clear();
              context.router.replace(const LoginScreenRoute());
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Да',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => context.router.pop(),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Нет',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
