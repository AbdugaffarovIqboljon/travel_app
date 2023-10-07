import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/domain/service/constants/colors.dart';
import 'package:travel_task/screens/home_screen/home_screen.dart';
import 'package:travel_task/screens/schedule_screen/schedule_screen.dart';
import 'package:travel_task/screens/search_screen/search_screen.dart';

import '../domain/service/constants/images.dart';
import 'home_screen/home_screen_views/bottom_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorN.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: const [
          HomePage(),
          ScheduleScreen(),
        ],
      ),

      /// Bottom app bar
      bottomNavigationBar: CustomBottomBar(
        controller: pageController,
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 55.sp,
          width: 55.sp,
          decoration: const BoxDecoration(
            color: Color(0xFFFF7029),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x2B0D6EFD),
                blurRadius: 19,
                offset: Offset(0, 8),
                spreadRadius: 0,
              )
            ],
          ),
          child: Image(
            image: const AssetImage(CustomImageN.searchIc),
            width: 30.sp,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
