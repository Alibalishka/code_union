import 'package:code_union/src/features/auth/logic/model/user_model.dart';
import 'package:hive/hive.dart';

String token = 'token';
String user = 'user';

initHiveAdapters() async {
  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(UserAdapter());
  }
}

initHiveBoxes() async {
  await Hive.openBox(token);
  await Hive.openBox<User>(user);
}

class AppHive {
  static String getToken() {
    Box tokenBox = Hive.box(token);
    return tokenBox.get(token);
  }

  static void saveToken(String tokenData) {
    Box tokenBox = Hive.box(token);
    tokenBox.put(token, tokenData);
  }

  static void saveUser(User userData) {
    Box userBox = Hive.box<User>(user);
    userBox.put(user, userData);
  }

  static void clearData() {
    Box tokenBox = Hive.box(token);
    tokenBox.clear();
    Box userBox = Hive.box<User>(user);
    userBox.clear();
  }
}
