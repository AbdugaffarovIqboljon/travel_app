import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/strings.dart';

class RatingView extends StatelessWidget {
  final String rating;

  const RatingView({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.orange,
          size: 17.sp,
        ),
        SizedBox(width: 5.sp),
        Text(
          CustomStringsN.rating,
          style: TextStyle(fontSize: 14.sp),
        ),
      ],
    );
  }
}
