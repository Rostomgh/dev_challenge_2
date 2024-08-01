import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryC extends StatelessWidget {
  final String category;
  final Function()? ontap;
  final Color clr;
  final Color clrtext;
  const CustomCategoryC(
      {super.key, required this.category, this.ontap, required this.clr, required this.clrtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        
        onTap: ontap,
        child: Container(
          height: 41.h,
          width: 92.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r).w,
            color: clr,
            border: Border.all(color: AppColors.Category, width: 2.w),
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                  fontSize: 16.sp, fontWeight: FontWeight.w400, color: clrtext),
            ),
          ),
        ),
      ),
    );
  }
}
