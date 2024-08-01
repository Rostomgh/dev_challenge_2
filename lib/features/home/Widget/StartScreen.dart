import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.start,
                    width: 19.w,
                    height: 19.h,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  const Text(
                    'Good Morning',
                    style: TextStyle(
                        color: AppColors.textColor, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                'Alena Sabyan',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.textColor),
              )
            ],
          ),
        ),
        SizedBox(
          width: 150.w,
        ),
        
        Image.asset(
            AppAssets.buy,
            width: 24.w,
            height: 24.h,
          ),
          ],);

      
  }
}
