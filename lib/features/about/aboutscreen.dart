import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutScreen extends StatelessWidget{
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          aboutStackMainContainer(context),
          aboutStackLeafTemplate(300.h, true),
          aboutStackLeafTemplate(330.h, false)
        ],
      ),
    );
  }

  Widget aboutStackLeafTemplate(double bottom, bool isLeft){
    return  Positioned(
      bottom: bottom,
      left: !isLeft ? 200.w : 0,
      right: !isLeft ? 0 : 100.w,
      child: Image.asset(
        !isLeft ? 'assets/images/leaf.png' : 'assets/images/leafblur.png',
        width: !isLeft ? 24.w : 20.w,
      ),
    );
  }

  Widget aboutStackMainContainer(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100.h,),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 40.w),
          child: Text(
            'Get your groceries \ndelivered to your home',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.3
            ),
          ),
        ),
        SizedBox(height: 16.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0.w),
          child: Text(
            'The best delivery app in town for delivering your daily fresh groceries.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4,
            ),
          ),
        ),
        SizedBox(height: 25.h,),
        Bounceable(
          scaleFactor: 0.8,
          onTap: (){
            Future.delayed(const Duration(seconds: 1),(){
              onShopNowTap(context);
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
            decoration : ShapeDecoration(
                color: const Color(0xFF1F7EA1),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r)
              )
            ),
              child: Text(
                'Shop Now',
                style: TextStyle(
                    color : Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                ),
              )
          ),
        ),
        const Spacer(),
        Container(
            width: double.infinity,
            height: 320.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage('assets/images/vegetables.png'),
                    fit: BoxFit.cover
                )

            )
        )

      ],
    );

  }
  void onShopNowTap(BuildContext context){
   Navigator.of(context).pop();
  }
}