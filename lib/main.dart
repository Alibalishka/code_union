import 'package:code_union/src/core/utils/hive_init.dart';
import 'package:code_union/src/features/app/widgets/app_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  initHiveAdapters();
  await initHiveBoxes();
  runApp(const CodeUnionApp());
}
