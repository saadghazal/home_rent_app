import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          const Center(
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
    );
  }
}
