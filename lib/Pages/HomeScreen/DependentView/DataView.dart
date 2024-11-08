// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';

class DataView extends StatelessWidget {
  WeatherAIBO weatherDetails;
  DataView({
    super.key,
    required this.weatherDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "lib/Helpers/Images/landingImage.png",
          // fit: BoxFit.cover,
          width: 160.w,
          height: 160.h,
        ),
        if (weatherDetails.list != null)
          Text(
            weatherDetails.list![0].name!,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        if (weatherDetails.list != null)
          Text(
            "${weatherDetails.list![0].main!.temp!}° C",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 84.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        if (weatherDetails.list != null)
          Text(
            weatherDetails.list![0].weather![0].main!,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        SizedBox(
          height: 15.h,
        ),
        if (weatherDetails.list != null)
          Text(
            weatherDetails.list![0].weather![0].description!,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
      ],
    );
  }
}
