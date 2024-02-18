import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_theme.dart';

class OnBoardingCover extends StatelessWidget {
  const OnBoardingCover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 508.h,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/onboarding.png',
            height: 508.h,
          ),
          Image.asset(
            'assets/images/onboarding_overlay.png',
            height: 508.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'New Place, New Home!',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppTheme.blueDark,
              ),
            ),
          )
        ],
      ),
    );
  }
}
