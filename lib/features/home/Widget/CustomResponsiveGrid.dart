import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomRowName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomResponsiveGrid extends StatelessWidget {
  const CustomResponsiveGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: [
      ResponsiveGridCol(
        lg: 12,
        child: Container(
            height: AppSizes.heightGrid,
            width: AppSizes.widthGrid,
            alignment: const Alignment(0, 0),
            color: AppColors.primaryColor,
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    top: 0,
                    child: Image.asset(
                      AppAssets.nodle,
                      width: 149.w,
                      height: 158.h,
                    )),
                Positioned(
                  left: 100,
                  bottom: 150,
                  child: Image.asset(AppAssets.line),
                ),
                Positioned(
                  bottom: 44,
                  left: 16,
                  top: 88,   
                  child: Text('Asian white noodle with extra seafood',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700)),
                ),
                const Positioned(
                    left: 16,
                    bottom: 16,
                    right: 130,
                    child: CustomRowName(
                      name: 'James Spader',
                    ))
              ],
            )),
      ),
    ]);
  }
}
