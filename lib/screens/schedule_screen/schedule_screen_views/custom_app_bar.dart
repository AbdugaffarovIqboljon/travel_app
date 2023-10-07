import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final double w;

  const CustomAppBar({
    super.key,
    required this.w,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.sp),
      child: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          "Schedule",
          style: TextStyle(
            color: const Color(0xFF1B1E28),
            fontWeight: FontWeight.w600,
            fontSize: 19.sp
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 11.0,
              horizontal: 11.0,
            ),
            decoration: const ShapeDecoration(
              color: Color(0xFFF6F6F8),
              shape: CircleBorder(),
            ),
            child:  Image(
              height: 50.sp,
              width: 50.sp,
              image: const AssetImage("assets/icons/ic_notification.png"),
            ),
          ),
        ],
      ),
    );
  }
}
