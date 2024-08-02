import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerHealthy extends StatelessWidget {
  final String imgP;
  final String static;
  const CustomContainerHealthy({super.key, required this.imgP, required this.static});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24.h,
          width: 24.w,
          decoration: BoxDecoration(
             color:const  Color(0xffE6EBF2),
            borderRadius: BorderRadius.circular(7.r).w,
          ),
          child: Image.asset(
            imgP,
            height: 20.h,
            width: 10.w,
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          static,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400,color: AppColors.textColor),
          
        ),
      ],
    );
  }
}
