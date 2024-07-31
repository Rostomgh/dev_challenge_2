import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryC extends StatelessWidget {
  final String category;
  final Function() ? ontap;
  const CustomCategoryC({super.key, required this.category, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 41.h,
        width: 92.w,
        color: AppColors.Category,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r).w,
        ),
        child: Text(
          category,  
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor),
        ),
      ),
    );
  }
}
