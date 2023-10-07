import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/strings.dart';

class TextButtonHelper extends StatelessWidget {
  final TextEditingController controller;
  const TextButtonHelper(
      {super.key, required this.onTap, required this.controller});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        CustomStringsN.cancel,
        style: TextStyle(
          color: CustomColorN.red,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
