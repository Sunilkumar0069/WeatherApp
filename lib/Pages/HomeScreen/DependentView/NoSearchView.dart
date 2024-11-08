// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoSearchView extends StatelessWidget {
  const NoSearchView({super.key});

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
          "Search result wasn't available",
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
