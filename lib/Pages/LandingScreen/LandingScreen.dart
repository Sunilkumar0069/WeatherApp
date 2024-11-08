// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:myweather/Helpers/Navigation/Navigation.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 428.w,
        height: 926.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff19C3FB).withOpacity(1),
              Color(0xff1D71F2).withOpacity(1),
            ],
            stops: [
              0.2,
              1,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ),
            Image.asset(
              "lib/Helpers/Images/landingImage.png",
              fit: BoxFit.cover,
              width: 428.w,
              height: 428.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 70.w),
              child: RichText(
                text: TextSpan(
                  text: 'Weather ',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Forecasts',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Color(0xffDDB130),
                          fontSize: 64.sp,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                context.pushReplacement(Pages.homeScreen);
              },
              child: Container(
                width: 304.w,
                height: 72.h,
                decoration: BoxDecoration(
                  color: Color(0xffDDB130),
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Center(
                  child: Text(
                    "Get Start",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff362A84),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
