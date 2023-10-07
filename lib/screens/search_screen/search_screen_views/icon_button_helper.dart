import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/icons.dart';

class IconButtonHelper extends StatelessWidget {
  const IconButtonHelper({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: CustomColorN.greyLight,
        child: Image(
          image: CustomIconsN.arrow,
          width: 35.sp,
          height: 35.sp,
        ),
      ),
    );
  }
}
