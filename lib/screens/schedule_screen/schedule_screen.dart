import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/screens/schedule_screen/schedule_screen_views/custom_app_bar.dart';
import 'package:travel_task/screens/schedule_screen/schedule_screen_views/custom_calendar.dart';
import 'package:travel_task/screens/schedule_screen/schedule_screen_views/custom_card.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      /// #AppBar
      appBar: PreferredSize(
        preferredSize: Size(w, 60.sp),
        child: CustomAppBar(w: w),
      ),

      /// #Body
      body: Column(
        children: [
          /// #Calendar View
          const CustomCalendar(),

          SizedBox(height: 10.sp),

          /// #Header Text
          Row(
            children: [
              SizedBox(width: 15.sp),
              Text(
                'My Schedule',
                style: TextStyle(
                  color: const Color(0xFF1B1E28),
                  fontSize: 19.sp,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 160.sp),
              Text(
                'View all',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFFFF6320),
                  fontSize: 15.sp,
                  fontFamily: 'SF Pro',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          SizedBox(height: 25.sp),

          /// #Cards List
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                const CustomCard(
                  imagePath: "assets/images/img_hisma_desert.png",
                  calendar: '23 January 2023',
                  location: 'NEOM, Saudi Arabia',
                  destinationName: 'Hisma Desert',
                ),
                SizedBox(height: 12.sp),
                const CustomCard(
                  imagePath: "assets/images/img_rain_fortex.png",
                  calendar: '31 January 2023',
                  location: 'Zeero Point, Sylhet',
                  destinationName: 'HSBC Rain Vortex ',
                ),
                SizedBox(height: 12.sp),
                const CustomCard(
                  imagePath: "assets/images/img_island_siargao.png",
                  calendar: '29 January 2023',
                  location: 'Siargao,Philippines',
                  destinationName: 'Island of Siargao',
                ),
                SizedBox(height: 12.sp),
                const CustomCard(
                  imagePath: "assets/images/img_island_siargao.png",
                  calendar: '29 January 2023',
                  location: 'Siargao,Philippines',
                  destinationName: 'Island of Siargao',
                ),
                SizedBox(height: 12.sp),
                const CustomCard(
                  imagePath: "assets/images/img_island_siargao.png",
                  calendar: '29 January 2023',
                  location: 'Siargao,Philippines',
                  destinationName: 'Island of Siargao',
                ),
                SizedBox(height: 12.sp),
                const CustomCard(
                  imagePath: "assets/images/img_island_siargao.png",
                  calendar: '29 January 2023',
                  location: 'Siargao,Philippines',
                  destinationName: 'Island of Siargao',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
