// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "lib/Helpers/Images/landingImage.png",
          // fit: BoxFit.cover,
          width: 428.w,
          height: 428.h,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Search you location's weather Forcasts",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Poppins",
            color: Colors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
