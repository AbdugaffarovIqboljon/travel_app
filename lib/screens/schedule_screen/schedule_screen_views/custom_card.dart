import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String calendar;
  final String destinationName;
  final String location;
  final String imagePath;

  const CustomCard({
    super.key,
    required this.calendar,
    required this.location,
    required this.destinationName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.sp,
      margin: EdgeInsets.symmetric(horizontal: 8.sp),
      padding: EdgeInsets.only(left: 10.sp, top: 10.sp, bottom: 10.sp),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(.1),
            blurRadius: 20,
          )
        ],
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Row(
            children: [
              /// #Leading Image
              Container(
                height: 120.sp,
                width: 100.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(width: 25.sp),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.5.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /// #Header Text Date
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Color(0xff7D848D),
                          ),
                          SizedBox(width: 5.sp),
                          Text(
                            calendar,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: TextStyle(
                              color: const Color(0xff7D848D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),

                    /// #Destination
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.0.sp,
                        ),
                        child: Text(
                          destinationName,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            color: const Color(0xff1B1E28),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),

                    /// #Destination Location
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            color: Color(0xFF7D848D),
                          ),
                          SizedBox(width: 5.sp),
                          Text(
                            location,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: const Color(0xFF7D848D),
                              fontSize: 13.sp,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              size: 17.sp,
              Icons.arrow_forward_ios_rounded,
              color: const Color(0xff7D848D),
            ),
          ),
        ],
      ),
    );
  }
}
