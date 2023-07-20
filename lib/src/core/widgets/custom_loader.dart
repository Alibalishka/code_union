import 'package:flutter/cupertino.dart';

class CircleLoader extends StatelessWidget {
  const CircleLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CupertinoActivityIndicator());
    // if (Platform.isIOS) {
    //   return const CupertinoActivityIndicator();
    // } else if (Platform.isAndroid) {
    //   return Center(
    //     child: Container(
    //       width: 35,
    //       height: 35,
    //       decoration: const BoxDecoration(
    //           shape: BoxShape.circle, color: AppColors.darkGreen),
    //       child: const Padding(
    //         padding: EdgeInsets.all(8),
    //         child: CircularProgressIndicator(
    //           color: AppColors.white,
    //           strokeWidth: 2.5,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   return Container();
    // }
  }
}
