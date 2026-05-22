import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VegicUtils{
  Widget getVegicLogo(){
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: ShapeDecoration(
        color: Color(0xFFE9F5FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r)
          )
      ),
      child: Center(
        child: Image.asset(
          'assets/images/rabbiticon.png',
          width: 40.w,
          height: 40.h,
        ),
      ),
    );
  }
}