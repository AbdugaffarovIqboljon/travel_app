import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';

class HotelImageView extends StatelessWidget {
  final ImageProvider image;
  final String? text;

  const HotelImageView({
    super.key,
    required this.image,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: text != null
          ? [
              /// #image you can click
              GestureDetector(
                onTap: () {
                  debugPrint("Other images!");
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image(
                    image: image,
                    width: 42.sp,
                    height: 42.sp,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// #image text
              Text(
                text!,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: CustomColorN.colorFFFFFF,
                ),
              )
            ]
          : [
              /// #image
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image(
                  image: image,
                  width: 42.sp,
                  height: 42.sp,
                  fit: BoxFit.cover,
                ),
              ),
            ],
    );
  }
}
