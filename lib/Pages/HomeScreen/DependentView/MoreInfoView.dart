import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myweather/BO/WeatherAIBO/WeatherAIBO.dart';
import 'package:myweather/Pages/HomeScreen/DependentView/NoSearchView.dart';

class MoreInfoView extends StatelessWidget {
  final WeatherAIBO weatherDetails;

  MoreInfoView({
    super.key,
    required this.weatherDetails,
  });

  @override
  Widget build(BuildContext context) {
    if (weatherDetails.list == null || weatherDetails.list!.isEmpty) {
      return NoSearchView();
    }

    return SizedBox(
      height: 200.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          _buildWeatherInfoTile(
            label: "Max Temp",
            value: "${weatherDetails.list![0].main!.tempMax}° C",
          ),
          _buildWeatherInfoTile(
            label: "Min Temp",
            value: "${weatherDetails.list![0].main!.tempMin}° C",
          ),
          _buildWeatherInfoTile(
            label: "Feels like",
            value: "${weatherDetails.list![0].main!.feelsLike}° C",
          ),
          _buildWeatherInfoTile(
            label: "Air Humidity",
            value: "${weatherDetails.list![0].main!.humidity}%",
          ),
          _buildWeatherInfoTile(
            label: "Wind Speed",
            value: "${weatherDetails.list![0].wind!.speed} km/hr",
          ),
        ]),
      ),
    );
  }

  Widget _buildWeatherInfoTile({
    required String label,
    required String value,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Container(
        width: 100.w,
        height: 200.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.50),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 18.h),
          child: Column(
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image.asset(
                "lib/Helpers/Images/landingImage.png",
                width: 66.w,
                height: 66.h,
              ),
              Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
