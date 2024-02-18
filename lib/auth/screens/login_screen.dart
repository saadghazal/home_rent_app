import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_rent_app/utils/app_theme.dart';
import 'package:home_rent_app/widgets/gradient_button.dart';
import 'package:home_rent_app/widgets/main_button.dart';

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
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.blueDark,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Log In to your Placoo account to explore your dream place to live across the whole world!',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppTheme.navGrey,
                    ),
                  ),
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
                  Container(
                    height: 48.h,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: Color(0xFFF2F2F3),
                        border: Border.all(color: Color(0xFFE3E3E7), width: 0.8)),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/user_icon.png',
                          height: 22.h,
                          width: 22.w,
                          color: Color(0xFF7D7F88),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: AppTheme.blueDark,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.h,
                              ),
                              hintText: 'Enter your email',
                              hintStyle: const TextStyle(
                                fontFamily: 'SFProDisplay',
                                color: Color(0xFF7D7F88),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  Container(
                    height: 48.h,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: Color(0xFFF2F2F3),
                      border: Border.all(
                        color: Color(0xFFE3E3E7),
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/key.png',
                          height: 22.h,
                          width: 22.w,
                          color: Color(0xFF7D7F88),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: AppTheme.blueDark,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.h,
                              ),
                              hintText: 'Enter your password',
                              hintStyle: const TextStyle(
                                fontFamily: 'SFProDisplay',
                                color: Color(0xFF7D7F88),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 26.h,
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        Center(
                          child: Divider(
                            color: Color(0xFFEBE8F6),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 26.h,
                            width: 47.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Color(0xFFEBE8F6),
                            ),
                            child: const Center(
                              child: Text(
                                'OR',
                                style: TextStyle(
                                  color: Color(0xFF9E91DA),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
