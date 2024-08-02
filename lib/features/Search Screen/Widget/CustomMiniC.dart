import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMiniC extends StatelessWidget {
  const CustomMiniC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: const Color(0xffE6EBF2),
          borderRadius: BorderRadius.circular(10.r).w),
          
    );
  }
}