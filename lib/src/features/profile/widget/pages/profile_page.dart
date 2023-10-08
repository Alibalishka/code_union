import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/resources/app_svg_images.dart';
import 'package:code_union/src/core/widgets/column_spacer.dart';
import 'package:code_union/src/core/widgets/custom_app_bar.dart';
import 'package:code_union/src/features/auth/logic/model/user_model.dart';
import 'package:code_union/src/features/profile/widget/widgets/profile_exit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? user = Hive.box<User>('user').get('user');

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CustomAppBar(text: 'Профиль'),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ColumnSpacer(3.8),
            SvgPicture.asset(AppSvgImages.profile2, height: 64),
            const ColumnSpacer(1.5),
            Text(
              user?.nickname ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.blacColor,
                fontSize: 24,
              ),
            ),
            const ColumnSpacer(1.2),
            Text(
              user?.email ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.grayColor,
                fontSize: 16,
              ),
            ),
            const ColumnSpacer(2.7),
            const ExitButton()
          ],
        ),
      ),
    );
  }
}
