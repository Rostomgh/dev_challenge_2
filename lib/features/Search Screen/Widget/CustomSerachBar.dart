import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final Function()? ontap;
  const CustomSearchBar({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 327.w,
          height: 54.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r).w,
              border: Border.all(color: AppColors.SearchBarColor, width: 2.w),
              color: AppColors.white),
          padding: const EdgeInsets.all(13.0).r,
              child:  Row(
                children: [
                  Image.asset(AppAssets.search,width: 20.w,height: 20.h,color: Colors.black,),
                  SizedBox(width:8.w),
                  Text('Search',style: TextStyle(color: const Color(0xff97A2B0),fontSize: 16.sp,fontWeight: FontWeight.w400),)
                ]
              ),
        ),
      ),
    );
  
  }
}
