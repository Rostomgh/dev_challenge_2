import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomPlusMinus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerIngred extends StatelessWidget {
  final String img;
  final String name;
  const CustomContainerIngred({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          height: 70.h,
          width: 327.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r).w,
              boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
        
          child: Row(
            children: [
              Image.asset(
                img,
                height: 48.h,
                width: 48.w,
              ),
              const SizedBox(
                width: AppSizes.height,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800),
      
              ),
              SizedBox(
                width: 90.w,),
                const CustomPlusMinus()
            ],
          )),
    );
  }
}
