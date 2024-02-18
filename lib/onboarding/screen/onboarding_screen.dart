import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_rent_app/auth/screens/login/login_screen.dart';
import 'package:home_rent_app/onboarding/widgets/onboarding_cover.dart';
import 'package:home_rent_app/utils/app_theme.dart';
import 'package:home_rent_app/widgets/gradient_button.dart';
import 'package:home_rent_app/widgets/main_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            OnBoardingCover(),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Are you ready to uproot and start over in a new area? Placoo will help you on your journey!',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppTheme.navGrey,
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: GradientButton(
                label: 'Login',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    LoginScreen.routeName,
                    (Route a) {
                      return false;
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: MainButton(
                onTap: () {},
                label: 'Sign Up',
                backgroundColor: Colors.white,
                labelColor: AppTheme.bonusColor,
                borderColor: Color(0xFFE3E3E7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
