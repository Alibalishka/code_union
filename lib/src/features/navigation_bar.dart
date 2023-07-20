import 'package:auto_route/auto_route.dart';
import 'package:code_union/src/core/extensions/map_indexed.dart';
import 'package:code_union/src/core/resources/app_colors.dart';
import 'package:code_union/src/core/resources/app_svg_images.dart';
import 'package:code_union/src/core/widgets/column_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = <_NavbarItemFactory>[
      _NavbarItemFactory(AppSvgImages.home, 'Лента'),
      _NavbarItemFactory(AppSvgImages.map, 'Карта'),
      _NavbarItemFactory(AppSvgImages.favourite, 'Избранные'),
      _NavbarItemFactory(AppSvgImages.profile, 'Профиль'),
    ].mapIndexedToList((value, int index) => value.build(index, context));

    return BottomAppBar(
      elevation: 0,
      child: Container(
        color: AppColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: buttons,
        ),
      ),
    );
  }
}

class _NavbarItemFactory {
  final String icon;
  final String name;

  _NavbarItemFactory(this.icon, this.name);

  InkWell build(int index, BuildContext context) {
    final tabs = AutoTabsRouter.of(context);
    final current = AutoTabsRouter.of(context, watch: true).activeIndex;

    return InkWell(
      onTap: () async => index == current
          ? await _popUntilRoot(tabs)
          : tabs.setActiveIndex(index),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        // width: context.mediaQuery.size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ColumnSpacer(1),
            SvgPicture.asset(
              icon,
              color: index == current
                  ? AppColors.purpleColor
                  : AppColors.blacColor,
            ),
            const ColumnSpacer(0.8),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: index == current
                      ? AppColors.purpleColor
                      : AppColors.blacColor),
            )
          ],
        ),
      ),
    );
  }

  // ignore: member-ordering-extended
  Future<void> _popUntilRoot(TabsRouter tabsRouter) async {
    // ignore: deprecated_member_use
    if (tabsRouter.current.router.canPopSelfOrChildren) {
      await tabsRouter.current.router
          .popTop()
          .then((value) async => _popUntilRoot(tabsRouter));
    }
    return;
  }
}
