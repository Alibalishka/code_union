import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/resources/app_svg_images.dart';
import 'package:code_union/src/core/widgets/column_spacer.dart';
import 'package:code_union/src/core/widgets/custom_app_bar.dart';
import 'package:code_union/src/core/widgets/custom_loader.dart';
import 'package:code_union/src/features/profile/logic/bloc/profile_bloc.dart';
import 'package:code_union/src/features/profile/widget/widgets/profile_exit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(LoadProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CustomAppBar(text: 'Профиль'),
      child: SafeArea(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return const CircleLoader();
            } else if (state is ProfileSuccess) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ColumnSpacer(2),
                  SvgPicture.asset(AppSvgImages.profile2),
                  const ColumnSpacer(2),
                  Text(
                    state.profileData.nickname,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: AppColors.blacColor),
                  ),
                  const ColumnSpacer(1),
                  Text(
                    state.profileData.email,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.grayColor),
                  ),
                  const ColumnSpacer(2),
                  const ExitButton()
                ],
              );
            } else if (state is ProfileFailed) {
              return Center(child: Text(state.message));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
