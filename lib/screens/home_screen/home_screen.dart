import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_task/screens/favourite_places_screen/favourite_places_screen.dart';
import 'package:travel_task/screens/popular_places_screen/popular_places_screen.dart';

import '../../domain/service/constants/images.dart';
import '../../domain/service/constants/strings.dart';
import 'home_screen_views/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.sp, right: 15.sp, top: 40.sp),
                child: Column(
                  children: [
                    /// App Bar
                    SizedBox(
                      height: 44.sp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: 44.sp,
                              width: 44.sp,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF7F7F9),
                                image: DecorationImage(
                                  image:
                                      AssetImage(CustomImageN.icNotification),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 23.sp,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FavoritePlace(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 24.sp),

                    /// Main Text
                    RichText(
                      text: TextSpan(
                        text: "${CustomStringsN.mainText}\t",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          wordSpacing: 1,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          WidgetSpan(
                            child: Transform.scale(
                              scale: 1.8.sp,
                              child: Image.asset(
                                'assets/icons/world.png',
                                height: 27.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.sp),

                    /// Menu Texts
                    Row(
                      children: [
                        /// Destination text
                        Text(
                          CustomStringsN.bestDestination,
                          style: GoogleFonts.roboto(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),

                        /// View All Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PopularPlacePage(),
                              ),
                            );
                          },
                          child: Text(
                            CustomStringsN.viewAll,
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                color: const Color(0xFFFF7029),
                                decorationColor: const Color(0xFFFF7029),
                                decoration: TextDecoration.underline),
                          ),
                        ),

                        SizedBox(width: 5.sp),
                      ],
                    ),

                    SizedBox(height: 20.sp),
                  ],
                ),
              ),

              /// List items
              const MyListView(),
            ],
          ),
        ),
      ),
    );
  }
}
