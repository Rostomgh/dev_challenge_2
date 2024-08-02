import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlusMinus extends StatelessWidget {
  final Function()? onpresadd;
  final Function()? onpressremove;
  const CustomPlusMinus({super.key, this.onpresadd, this.onpressremove});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 2.w),
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Center(
            child: IconButton(
              onPressed: onpressremove,
              icon: Icon(
                color: AppColors.primaryColor,
                Icons.remove,
                size: 11.h,
              
              ),
            ),
          ),
        ),
        SizedBox(width: 27.w),
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 2.w),
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: Center(
            child: IconButton(
              onPressed: onpresadd,
              icon: Icon(
                color: AppColors.primaryColor,
                Icons.add,
                size: 11.h,
              
              ),
            ),
          ),
        ),
      ],
    );
  }
}
