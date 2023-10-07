import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/domain/models/place_search_model.dart';
import 'package:travel_task/screens/search_screen/search_screen_views/container_widget.dart';
import 'package:travel_task/screens/search_screen/search_screen_views/icon_button_helper.dart';
import 'package:travel_task/screens/search_screen/search_screen_views/text_button_helper.dart';
import 'package:travel_task/screens/search_screen/search_screen_views/text_field_widget.dart';

import '../../domain/service/constants/colors.dart';
import '../../domain/service/constants/strings.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColorN.white,
        centerTitle: true,
        leading: IconButtonHelper(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          CustomStringsN.search,
          style: TextStyle(
            color: CustomColorN.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          TextButtonHelper(
            onTap: () {
              controller.text = '';
            },
            controller: controller,
          ),
          SizedBox(width: 15.sp),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 80.sp),
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.0.sp),
            child: TextFieldWidget(
              controller: controller,
              hintText: CustomStringsN.searchPlaces,
              onPressed: () {},
            ),
          ),
        ),
        leadingWidth: 80.sp,
        forceMaterialTransparency: true,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColorN.white,
      body: ListView(
        children: [
          SizedBox(height: 20.sp),
          Padding(
            padding: EdgeInsets.only(left: 15.sp),
            child: Text(
              CustomStringsN.searchPlaces,
              style: TextStyle(
                color: CustomColorN.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: placeSearchModel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ContainerWidget(
                  model: placeSearchModel[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
