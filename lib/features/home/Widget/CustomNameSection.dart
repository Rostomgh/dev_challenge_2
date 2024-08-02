import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNameSection extends StatelessWidget {
  final String NSection;
  final String? tit;

  const CustomNameSection({super.key, required this.NSection, this.tit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              NSection,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
          ),
          if (tit != null)
            Text(
              tit!,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 14.sp,
              ),
            ),
        ],
      ),
    );
  }
}
