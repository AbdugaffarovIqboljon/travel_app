import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/screens/favourite_places_screen/favourite_places_screen_views/favotire_place_view.dart';
import '../../domain/service/constants/colors.dart';
import '../../domain/service/constants/images.dart';
import '../../domain/service/constants/strings.dart';

class FavoritePlace extends StatefulWidget {
  const FavoritePlace({super.key});

  @override
  State<FavoritePlace> createState() => _FavoritePlaceState();
}

class _FavoritePlaceState extends State<FavoritePlace> {
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
            CustomStringsN.favPlace,
            style: TextStyle(
                color: CustomColorN.textDarkBlue,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),

        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            SizedBox(height: 20.sp),
            Text(
              CustomStringsN.favPlace,
              style: TextStyle(
                  color: CustomColorN.textDarkBlue,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20.sp),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 2.45,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CustomFavoriteContainer(
                  placeName: CustomStringsN.hismaDesert,
                  countryName: CustomStringsN.saudiArabia,
                  image: Images.image1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
