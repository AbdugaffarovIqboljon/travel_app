import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_task/domain/models/place_search_model.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/icons.dart';
import '../../../domain/service/constants/strings.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.model,
  }) : super(key: key);
  final PlaceSearchModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
      decoration: BoxDecoration(
        color: CustomColorN.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColorN.greyLight.withOpacity(0.5),
            blurRadius: 5,
            offset: const Offset(5, 5),
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).width / 2.7,
            width: MediaQuery.sizeOf(context).width / 2.2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Image(
              image: model.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            model.placeName,
            style: TextStyle(
              fontSize: 14.sp,
              color: CustomColorN.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 13.sp, color: CustomColorN.grey),
                children: [
                  WidgetSpan(
                      child: Image(
                    image: CustomIconsN.location,
                    height: 15.sp,
                    width: 15.sp,
                  )),
                  TextSpan(text: model.placeLocation)
                ]),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 13.sp, color: CustomColorN.grey),
              children: [
                TextSpan(
                  text: model.price,
                  style: const TextStyle(color: CustomColorN.red),
                ),
                const TextSpan(text: CustomStringsN.person)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
