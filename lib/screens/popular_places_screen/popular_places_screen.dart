import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/screens/popular_places_screen/popular_places_screen_views/custom_container.dart';

import '../../domain/service/constants/colors.dart';
import '../../domain/service/constants/images.dart';
import '../../domain/service/constants/strings.dart';

class PopularPlacePage extends StatefulWidget {
  const PopularPlacePage({super.key});

  @override
  State<PopularPlacePage> createState() => _PopularPlacePageState();
}

class _PopularPlacePageState extends State<PopularPlacePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Scaffold(
        backgroundColor: CustomColorN.white,

        /// #app bar
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: CustomColorN.white,
          centerTitle: true,
          title: Text(
            CustomStringsN.popularPlace,
            style: TextStyle(
                color: CustomColorN.textDarkBlue,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 23.sp,
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              SizedBox(height: 20.sp),
              Text(
                CustomStringsN.popularPlace,
                style: TextStyle(
                    color: CustomColorN.textDarkBlue,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20.sp),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3.2,
                    crossAxisSpacing: 10),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const CustomContainer(
                    placeName: CustomStringsN.hismaDesert,
                    countryName: CustomStringsN.saudiArabia,
                    starNumber: CustomStringsN.fourPointNine,
                    money: CustomStringsN.money1,
                    image: Images.image1,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
