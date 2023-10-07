import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/images.dart';

class CustomFavoriteContainer extends StatelessWidget {
  final String placeName;
  final String countryName;
  final String image;
  const CustomFavoriteContainer({
    super.key,
    required this.placeName,
    required this.countryName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 238.sp,
        width: 160.sp,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, top: 10.sp),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.sp),
                    child: Image.asset(image),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 105.sp, top: 8.sp),
                    child: const Like(),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 22.sp, top: 5.sp),
                      child: Text(
                        placeName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5.sp),
                    Row(
                      children: [
                        Image.asset(
                          Images.location,
                          height: 14.sp,
                        ),
                        SizedBox(width: 2.sp),
                        Text(
                          countryName,
                          style: TextStyle(
                            color: CustomColorN.textGrey,
                            fontSize: 14.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        radius: 15.sp,
        backgroundColor: CustomColorN.white.withOpacity(0.3),
        child: isLike
            ? Icon(
                CupertinoIcons.heart_fill,
                color: CustomColorN.red,
                size: 18.sp,
              )
            : Icon(
                CupertinoIcons.heart,
                color: CustomColorN.red,
                size: 18.sp,
              ),
      ),
      onTap: () {
        isLike = !isLike;
        setState(() {});
      },
    );
  }
}
