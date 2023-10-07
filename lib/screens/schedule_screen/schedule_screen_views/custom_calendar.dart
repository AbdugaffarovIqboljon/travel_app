import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 5.sp),
      margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 15.sp),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F9FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: EasyDateTimeLine(
        initialDate: DateTime.now(),
        onDateChange: (selectedDate) {},
        activeColor: const Color(0xFFFF6320),
        headerProps: const EasyHeaderProps(
          monthPickerType: MonthPickerType.switcher,
          selectedDateFormat: SelectedDateFormat.fullDateDMonthAsStrY,
        ),
        dayProps: EasyDayProps(
          activeDayStyle: const DayStyle(borderRadius: 15.0),
          inactiveDayStyle: const DayStyle(borderRadius: 15.0),
          dayStructure: DayStructure.monthDayNumDayStr,
          borderColor: Colors.blueGrey.shade50,
        ),
        timeLineProps: const EasyTimeLineProps(
          hPadding: 10.0, // padding from left and right
          separatorPadding: 18.0, // padding between days
        ),
      ),
    );
  }
}
