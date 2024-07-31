import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowName extends StatelessWidget {
  final String name;
  const CustomRowName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.w,
          backgroundImage: const AssetImage(AppAssets.profile),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(name,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.white))
      ],
    );
  }
}
