import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.label,
    required this.onTap,
    this.width = double.maxFinite,
    this.radius = 50,
    this.height = 50,
    this.labelSize = 16,
    super.key,
  });
  final String label;
  final double height;
  final double radius;
  final double width;
  final double labelSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius.r),
          gradient: AppTheme.buttonGradient(),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20.r,
              color: AppTheme.mainColor.withOpacity(0.4),
            )
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: labelSize.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
