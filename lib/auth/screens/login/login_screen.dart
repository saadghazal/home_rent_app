import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_rent_app/utils/app_theme.dart';
import 'package:home_rent_app/widgets/gradient_button.dart';
import 'package:home_rent_app/widgets/main_button.dart';
import 'package:home_rent_app/widgets/main_text_field.dart';
import 'package:home_rent_app/widgets/or_widget.dart';

import '../widgets/welcome_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72.h,
                  ),
                  WelcomeWidget(),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: AppTheme.blueDark,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  MainTextField(
                    label: 'Enter your email',
                    borderColor: Color(0xFFE3E3E7),
                    backgroundColor: Color(0xFFF2F2F3),
                    prefixWidget: Image.asset(
                      'assets/icons/user_icon.png',
                      height: 22.h,
                      width: 22.w,
                      color: Color(0xFF7D7F88),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: AppTheme.blueDark,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  MainTextField(
                    label: 'Enter your password',
                    borderColor: Color(0xFFE3E3E7),
                    backgroundColor: Color(0xFFF2F2F3),
                    isPassword: true,
                    prefixWidget: Image.asset(
                      'assets/icons/key.png',
                      height: 22.h,
                      width: 22.w,
                      color: const Color(0xFF7D7F88),
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  GradientButton(
                    label: 'Login',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xFF7D7F88),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  OrWidget(),
                  SizedBox(
                    height: 42.h,
                  ),
                  MainButton(
                    label: 'Sign In With Apple',
                    onTap: () {},
                    icon: Image.asset(
                      'assets/icons/apple_icon.png',
                      height: 24.h,
                      width: 24.w,
                    ),
                    backgroundColor: AppTheme.blueDark,
                    labelColor: Colors.white,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  MainButton(
                    label: 'Sign In With Google',
                    onTap: () {},
                    icon: Image.asset(
                      'assets/icons/google_logo.png',
                      height: 24.h,
                      width: 24.w,
                    ),
                    backgroundColor: Colors.white,
                    labelColor: AppTheme.navGrey,
                    borderColor: Color(0xFFE2E8F0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
