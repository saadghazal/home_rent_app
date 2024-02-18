import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_theme.dart';
import '../../../widgets/gradient_button.dart';
import '../../../widgets/main_button.dart';
import '../../../widgets/main_text_field.dart';
import '../../../widgets/or_widget.dart';
import '../widgets/welcome_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 72.h,
                  ),
                  WelcomeWidget(
                    title: 'Let’s explore together!',
                    description:
                        'Create your Placoo account to explore your dream place to live across the whole world!',
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
                    height: 18.h,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      color: AppTheme.blueDark,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  MainTextField(
                    label: 'Enter your phone number',
                    borderColor: Color(0xFFE3E3E7),
                    backgroundColor: Color(0xFFF2F2F3),
                    isPassword: true,
                    prefixWidget: Row(
                      children: [
                        CircleAvatar(
                          radius: 10.r,
                          backgroundImage: AssetImage('assets/images/jordan_flag.png'),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  GradientButton(
                    label: 'Create Account',
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
