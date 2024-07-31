import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNameSection extends StatelessWidget {
  final String NSection;
  const CustomNameSection({super.key, required this.NSection});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(NSection,
            style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor)),
        SizedBox(
          width: 195.w,
        ),
        Text(
          'See All',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 14.sp),
        )
      ],
    );
  }
}