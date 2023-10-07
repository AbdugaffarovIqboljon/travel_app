import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_task/screens/detail_screen/detail_screen.dart';
import 'package:travel_task/screens/home_screen/home_screen_views/rating_view.dart';

import '../../../domain/service/constants/images.dart';
import '../../../domain/service/constants/strings.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 385.sp,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 40.sp),
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(),
                ),
              );
            },
            child: Container(
              width: 240.sp,
              margin: EdgeInsets.only(bottom: 10.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 2,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 286.sp,
                    width: 240.sp,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          CustomImageN.imgKhaiIslandBeach,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          CustomStringsN.namePlace,
                          style: GoogleFonts.roboto(fontSize: 14.sp),
                        ),
                        const RatingView(rating: CustomStringsN.rating),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Colors.grey,
                              size: 17.sp,
                            ),
                            Text(
                              CustomStringsN.location,
                              style: GoogleFonts.roboto(
                                  fontSize: 14.sp, color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.sp),
                              child: Image(
                                image: const AssetImage(CustomImageN.person1),
                                width: 27.sp,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.sp),
                              child: Image(
                                image: const AssetImage(CustomImageN.person2),
                                width: 27.sp,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.sp),
                              child: Image(
                                image: const AssetImage(CustomImageN.person3),
                                width: 27.sp,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 45.sp),
                              height: 27.sp,
                              width: 27.sp,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE5F4FF),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "+56",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.sp,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
