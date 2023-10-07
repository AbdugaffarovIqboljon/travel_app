import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/service/constants/colors.dart';
import '../../../domain/service/constants/icons.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.onPressed,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        autofocus: true,
        cursorHeight: 28.sp,
        keyboardType: TextInputType.streetAddress,
        cursorColor: Colors.grey.shade700,
        style: TextStyle(
            color: CustomColorN.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
          hintText: hintText,
          hintStyle: TextStyle(
              color: CustomColorN.grey,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: CustomColorN.greyLight,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Image(
              image: CustomIconsN.search,
              height: 25.sp,
              width: 25.sp,
            ),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 1.sp,
                height: 30.sp,
                color: CustomColorN.grey.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.sp),
                child: IconButton(
                  onPressed: onPressed,
                  icon: Image(
                    image: CustomIconsN.microphone,
                    height: 25.sp,
                    width: 25.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
