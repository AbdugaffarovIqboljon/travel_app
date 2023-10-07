import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';

class AppBarItemView extends StatelessWidget {
  final Widget child;

  const AppBarItemView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pop(context);
      },
      color: CustomColorN.color1B1E28.withOpacity(.15),
      elevation: 0,
      shape: const CircleBorder(),
      minWidth: 44.sp,
      height: 44.sp,
      child: child,
    );
  }
}
