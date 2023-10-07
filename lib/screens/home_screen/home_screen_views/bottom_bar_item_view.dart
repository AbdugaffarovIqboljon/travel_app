// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarView extends StatefulWidget {
  int index;
  int currentIndex;
  final void Function() onTap;
  final String image;
  final String itemLabel;

  BottomBarView(
      {super.key,
      required this.index,
      required this.image,
      required this.itemLabel,
      required this.currentIndex,
      required this.onTap});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Icon
          Image(
            image: AssetImage(widget.image),
            width: 26.sp,
            height: 26.sp,
            color: widget.currentIndex == widget.index
                ? const Color(0xFFFF7029)
                : Colors.grey.shade600,
          ),

          /// Label
          Text(
            widget.itemLabel,
            style: TextStyle(
              fontSize: 12.sp,
              color: widget.currentIndex == widget.index
                  ? const Color(0xFFFF7029)
                  : Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
