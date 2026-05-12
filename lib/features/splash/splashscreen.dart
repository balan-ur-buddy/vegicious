import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E99C7),
      body : Center(
        child: splashLoadingIcon(),
      ),
    );
  }

  Widget splashLoadingIcon(){
    return SizedBox(
     width: 110.w,
     height: 110.h,
      child: Container(
         decoration: ShapeDecoration(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadiusGeometry.circular(20.0)
             )
         ),
        child: Center(
          child: LottieBuilder.asset(
            'assets/animations/splashLoading.json',
            width: 50.w,
            height: 37.h,
          ),
        ),
      ),
    );
  }

}