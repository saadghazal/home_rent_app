import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    required this.label,
    required this.borderColor,
    required this.backgroundColor,
    this.prefixWidget,
    this.height = 48,
    this.isPassword = false,
    super.key,
  });
  final String label;
  final bool isPassword;
  final Widget? prefixWidget;
  final double height;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 0.8),
      ),
      child: prefixWidget != null
          ? Row(
              children: [
                prefixWidget!,
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: TextField(
                    obscureText: isPassword,
                    cursorColor: AppTheme.blueDark,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12.h,
                      ),
                      hintText: label,
                      hintStyle: const TextStyle(
                        fontFamily: 'SFProDisplay',
                        color: Color(0xFF7D7F88),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : TextField(
              cursorColor: AppTheme.blueDark,
              obscureText: isPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                hintText: label,
                hintStyle: const TextStyle(
                  fontFamily: 'SFProDisplay',
                  color: Color(0xFF7D7F88),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
    );
  }
}
