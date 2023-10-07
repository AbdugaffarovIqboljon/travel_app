import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoView extends StatelessWidget {
  final IconData? icon;
  final String? text1;
  final String text2;
  final Color iconColor;
  final Color textColor1;
  final Color textColor2;

  const InfoView({
    super.key,
    this.icon,
    this.text1,
    required this.text2,
    required this.iconColor,
    required this.textColor1,
    required this.textColor2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null)

          /// #icon
          Icon(
            icon,
            size: 18.sp,
            color: iconColor,
          ),
        if (text1 != null)

          /// #text
          Text(
            text1!,
            style: TextStyle(
              fontSize: 15.sp,
              color: textColor1,
            ),
          ),

        /// #text2
        Text(
          text2,
          style: TextStyle(
            fontSize: 15.sp,
            color: textColor2,
          ),
        ),
      ],
    );
  }
}
