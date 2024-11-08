// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myweather/Pages/HomeScreen/DependentView/DataView.dart';
import 'package:myweather/Pages/HomeScreen/DependentView/MoreInfoView.dart';
import 'package:myweather/Pages/HomeScreen/DependentView/NoSearchView.dart';
import 'package:myweather/Pages/HomeScreen/DependentView/initialView.dart';
import 'package:myweather/Pages/HomeScreen/HomeScreenVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  HomeScreenVM _homeScreenVM = HomeScreenVM();
  TextEditingController _searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Observer(builder: (context) {
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
          child: Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: Column(
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).viewPadding.top),
                ),

                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: Color(0xffDDB130),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff362A84),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        width: 300.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Color(0xffDDB130),
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w, top: 4.h),
                            child: TextFormField(
                              controller: _searchController,
                              onFieldSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  _homeScreenVM.fetchWeatherDetails(
                                      searchText: value);
                                }
                              },
                              decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      if (_searchController.text.isNotEmpty) {
                                        _homeScreenVM.fetchWeatherDetails(
                                            searchText: _searchController.text);
                                      }
                                    },
                                    child: Icon(
                                      Icons.send,
                                      color: Color(0xff362A84),
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Search the City...",
                                  hintStyle: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Color(0xff362A84),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                if (_homeScreenVM.weatherDetails.cod == null) InitialView(),
                if (_homeScreenVM.weatherDetails.count == 0 &&
                    _homeScreenVM.weatherDetails.cod == null)
                  NoSearchView(),
                SizedBox(
                  height: 10.h,
                ),

                Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: (_homeScreenVM.weatherDetails.cod != null &&
                            _homeScreenVM.weatherDetails.count != 0)
                        ? DataView(
                            weatherDetails: _homeScreenVM.weatherDetails,
                          )
                        : SizedBox.shrink()),

                SizedBox(
                  height: 25.h,
                ),
                if (_homeScreenVM.weatherDetails.cod != null)
                  MoreInfoView(
                    weatherDetails: _homeScreenVM.weatherDetails,
                  )

                // -----------------------------------------------------------------
                // SizedBox(height: 10.h),
                // if (_homeScreenVM.weatherDetails == null)
                //   InitialView() // Display InitialView when weatherDetails is null
                // else ...[
                //   Padding(
                //     padding: EdgeInsets.only(left: 24.w),
                //     child:
                //         DataView(weatherDetails: _homeScreenVM.weatherDetails),
                //   ),
                //   SizedBox(height: 25.h),
                //   MoreInfoView(weatherDetails: _homeScreenVM.weatherDetails),
                // ],
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController.dispose();
  }
}
