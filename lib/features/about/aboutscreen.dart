import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutScreen extends StatelessWidget{
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60.h,),
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
                  ElevatedButton(
                      onPressed:(){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1F7EA1),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
                        shape: RoundedRectangleBorder(
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
              )
          ),

          // 2. FLOATING LEAF (Top Left of the Image)
          Positioned(
            bottom: 300.h, // Positions it precisely where the image boundary starts
            left: 30.w,
            child: Image.asset(
              'assets/images/leaf.png',
              width: 24.w,
            ),
          ),

          // 3. FLOATING LEAF (Top Right of the Image)
          Positioned(
            bottom: 330.h,
            right: 40.w,
            child: Image.asset(
              'assets/images/leafblur.png',
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }

}