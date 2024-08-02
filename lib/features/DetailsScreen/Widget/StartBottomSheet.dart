import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartBottomSheet extends StatelessWidget {
  const StartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          'Healthy Taco Salad',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.sp,
              color: AppColors.textColor),
        ),
        const SizedBox(
          height: AppSizes.Trich,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'This Healthy Taco Salad is the universal delight of taco night  ',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "View More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
