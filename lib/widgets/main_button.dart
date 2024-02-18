import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.label,
    required this.onTap,
    this.labelSize = 16,
    this.width = double.maxFinite,
    this.radius = 50,
    this.height = 50,
    required this.backgroundColor,
    required this.labelColor,
    this.shadowColor,
    this.borderColor,
    this.icon,
    super.key,
  });
  final String label;
  final double height;
  final double radius;
  final double width;
  final double labelSize;
  final Color backgroundColor;
  final Color labelColor;
  final Widget? icon;
  final Color? shadowColor;
  final Color? borderColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        padding: icon != null ? EdgeInsets.only(left: 16.w) : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: backgroundColor,
          border: Border.all(
            width: 0.8,
            color: borderColor ?? Colors.transparent,
          ),
          boxShadow: shadowColor != null
              ? [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 10.r,
                    color: shadowColor!,
                  )
                ]
              : null,
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon!,
                  Spacer(),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: labelSize.sp,
                      fontWeight: FontWeight.w600,
                      color: labelColor,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              )
            : Center(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: labelSize.sp,
                    fontWeight: FontWeight.w600,
                    color: labelColor,
                  ),
                ),
              ),
      ),
    );
  }
}
// Color(0xFFE3E3E7)
