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
    return Container(
       width : 130.w,
       height: 110.h,
       decoration: ShapeDecoration(
           color: Color(0xFF2E99C7).withRed(100),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(200.0)
           )
       ),
      child: Center(
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.white,BlendMode.srcIn),

          child: LottieBuilder.asset(
            'assets/animations/splashLoading.json',
            width: 100.w,
            height: 70.h,
          ),
        ),
      ),
    );
  }

}