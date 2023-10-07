import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/domain/service/constants/colors.dart';

import 'detail_screen_views/app_bar_item_view.dart';
import 'detail_screen_views/hotel_image_view.dart';
import 'detail_screen_views/info_view.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_khai_island_beach.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// #app bar
            Padding(
              padding: EdgeInsets.only(
                top: 56.sp,
                left: 20.sp,
                right: 20.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// #icon arrow back
                  AppBarItemView(
                    child: Image(
                      image: const AssetImage("assets/icons/ic_arrow_back.png"),
                      width: 6.sp,
                      height: 12.sp,
                    ),
                  ),

                  /// #text
                  Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: CustomColorN.colorFFFFFF,
                    ),
                  ),

                  /// #icon bookmark
                  AppBarItemView(
                    child: Image(
                      image: const AssetImage("assets/icons/ic_bookmark.png"),
                      width: 12.sp,
                      height: 18.sp,
                    ),
                  ),
                ],
              ),
            ),

            /// #bottom sheet button
            MaterialButton(
              minWidth: double.infinity,
              height: 40.sp,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              color: CustomColorN.colorFFFFFF,
              onPressed: () {
                showModalBottomSheet(
                  elevation: 0,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    /// #bottom sheet
                    return Container(
                      height: 485.sp,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: CustomColorN.colorFFFFFF,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 10.sp,
                        right: 20.sp,
                        left: 20.sp,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// #back  button
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 36.sp,
                                  height: 6.sp,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    color: CustomColorN.colorFFFFFF,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 18.sp),

                            /// #info
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// #name
                                    Text(
                                      "Khai island beach",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24.sp,
                                        color: CustomColorN.color1B1E28,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),

                                    /// #title
                                    Text(
                                      "Chang Wat Phang-nga",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: CustomColorN.color7D848D,
                                      ),
                                    ),
                                  ],
                                ),

                                /// #user image
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image(
                                    image: const AssetImage(
                                        "assets/images/img_user_photo.png"),
                                    width: 48.sp,
                                    height: 48.sp,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.sp),

                            /// #other info
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// #location
                                InfoView(
                                  icon: CupertinoIcons.location_solid,
                                  text2: "Thailand",
                                  iconColor: CustomColorN.color7D848D,
                                  textColor1: CustomColorN.color7D848D,
                                  textColor2: CustomColorN.color7D848D,
                                ),

                                /// #rating
                                InfoView(
                                  icon: Icons.star,
                                  text1: "4.9",
                                  text2: "(280)",
                                  iconColor: CustomColorN.colorFFD336,
                                  textColor1: CustomColorN.color1B1E28,
                                  textColor2: CustomColorN.color7D848D,
                                ),

                                /// #price per person
                                InfoView(
                                  text1: "\$80",
                                  text2: "/Person",
                                  iconColor: CustomColorN.colorFF6421,
                                  textColor1: CustomColorN.colorFF6421,
                                  textColor2: CustomColorN.color7D848D,
                                ),
                              ],
                            ),
                            SizedBox(height: 18.sp),

                            /// #other images
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HotelImageView(
                                  image: AssetImage(
                                      "assets/images/img_photo_1.png"),
                                ),
                                HotelImageView(
                                  image: AssetImage(
                                      "assets/images/img_photo_4.png"),
                                ),
                                HotelImageView(
                                  image: AssetImage(
                                      "assets/images/img_photo_3.png"),
                                ),
                                HotelImageView(
                                  image: AssetImage(
                                      "assets/images/img_photo_2.png"),
                                ),
                                HotelImageView(
                                  image: AssetImage(
                                      "assets/images/img_photo_5.png"),
                                  text: "16+",
                                ),
                              ],
                            ),
                            SizedBox(height: 18.sp),

                            /// #about
                            Text(
                              "About Destination",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                color: CustomColorN.color1B1E28,
                              ),
                            ),
                            SizedBox(height: 8.sp),

                            /// #about desription
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                  color: CustomColorN.color7D848D,
                                  height: 1.6,
                                ),
                                children: const [
                                  TextSpan(
                                      text:
                                          "Experience the ultimate vacation package with our beach travel package. From airline tickets to recommended hotel rooms and transportation, we have everything you need ETC..."),
                                  TextSpan(
                                    text: "Read More",
                                    style: TextStyle(
                                      color: CustomColorN.colorFFD521,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 14.sp),

                            /// #book now button
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 335.sp,
                              height: 50.sp,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              color: CustomColorN.colorFF6421,
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: CustomColorN.colorFFFFFF,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 36.sp,
                height: 6.sp,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: CustomColorN.color7D848D,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
