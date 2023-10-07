import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/images.dart';
import '../../../domain/service/constants/strings.dart';

class CustomContainer extends StatelessWidget {
  final String placeName;
  final String countryName;
  final String starNumber;
  final String money;
  final String image;

  const CustomContainer({
    super.key,
    required this.placeName,
    required this.countryName,
    required this.starNumber,
    required this.money,
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
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(image),
                  Padding(
                    padding: EdgeInsets.only(left: 101.sp, top: 8.sp),
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
                        style: TextStyle(
                          fontSize: 18.sp,
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
                    SizedBox(height: 5.sp),
                    Row(
                      children: [
                        for (int i = 0; i <= 2; i++)
                          Icon(
                            CupertinoIcons.star_fill,
                            color: CustomColorN.starColor,
                            size: 18.sp,
                          ),
                        SizedBox(width: 5.sp),
                        Text(
                          starNumber,
                          style: TextStyle(
                            color: CustomColorN.textDarkBlue,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 25.sp),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color: CustomColorN.textRed,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: money,
                            ),
                            TextSpan(
                              text: CustomStringsN.person,
                              style: TextStyle(
                                color: CustomColorN.textGrey,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
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
        radius: 16.sp,
        backgroundColor: CustomColorN.textDarkBlue.withOpacity(0.2),
        child: isLike
            ? Icon(
                CupertinoIcons.heart_fill,
                color: CustomColorN.buttonColor,
                size: 20.sp,
              )
            : Icon(
                CupertinoIcons.heart,
                color: CustomColorN.buttonColor,
                size: 20.sp,
              ),
      ),
      onTap: () {
        isLike = !isLike;
        setState(() {});
      },
    );
  }
}
