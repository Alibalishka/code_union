import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final String text;
  const CustomAppBar({
    super.key,
    required this.text,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kMinInteractiveDimension);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
