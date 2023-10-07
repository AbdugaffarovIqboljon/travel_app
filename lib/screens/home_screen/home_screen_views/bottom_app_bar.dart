import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/domain/service/constants/images.dart';
import 'package:travel_task/domain/service/constants/strings.dart';

import 'bottom_bar_item_view.dart';

class CustomBottomBar extends StatefulWidget {
  final PageController controller;

  const CustomBottomBar({
    super.key,
    required this.controller,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;
  List<String> icons = [
    CustomImageN.homeIc,
    CustomImageN.calendarIc,
    CustomImageN.chatIc,
    CustomImageN.profileIc,
  ];
  List<String> label = [
    CustomStringsN.home,
    CustomStringsN.calendar,
    CustomStringsN.messages,
    CustomStringsN.profile
  ];
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 10,
      height: 80.sp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < icons.length; i++)
            SizedBox(
              height: 60.sp,
              width: 75.sp,
              child: BottomBarView(
                currentIndex: currentIndex,
                index: i,
                image: icons[i],
                itemLabel: label[i],
                onTap: () {
                  currentIndex = i;
                  widget.controller.jumpToPage(currentIndex);
                  setState(() {});
                },
              ),
            ),
        ],
      ),
    );
  }
}
