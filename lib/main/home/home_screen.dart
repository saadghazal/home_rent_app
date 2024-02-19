import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_rent_app/utils/app_theme.dart';
import 'package:home_rent_app/widgets/main_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your place in',
                  style: TextStyle(
                    color: AppTheme.navGrey2,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/location_icon.png',
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Amman, Jordan',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTheme.blueDark,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MainTextField(
                    label: 'Search address, city, location',
                    borderColor: AppTheme.fieldBorder,
                    backgroundColor: AppTheme.fieldFillColor,
                    prefixWidget: Image.asset(
                      'assets/icons/search_icon.png',
                      height: 22.h,
                      width: 22.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Image.asset(
                  'assets/icons/solid_filter_icon.png',
                  height: 25.h,
                  width: 25.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What do you need?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppTheme.blueDark,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 56.h,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.fieldBorder, width: 0.8),
                    borderRadius: BorderRadius.circular(50.r),
                    color: AppTheme.fieldFillColor,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            gradient: AppTheme.buttonGradient(),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                color: AppTheme.mainColor.withOpacity(0.5),
                                offset: Offset(2, 8),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'I need to rent',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 40.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Center(
                            child: Text(
                              'I need to buy ',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.navGrey2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
