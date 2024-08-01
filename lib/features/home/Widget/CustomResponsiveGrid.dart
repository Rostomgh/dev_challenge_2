import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomRowName.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomResponsiveGrid extends StatelessWidget {
  final String title;
  const CustomResponsiveGrid({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          xs: 10,
          child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15.r).w,
              ),
              height: AppSizes.heightGrid,
              width: AppSizes.widthGrid,
              alignment: Alignment.center,
              child: Stack(
                children: [
                    Positioned(
                  child: Image.asset(AppAssets.line),
                ),
                  Positioned(
                    left: 25,
                    top: 41,
                    child: Image.asset(AppAssets.grid,width: 14.w,height: 14.h,fit: BoxFit.cover,)),
                Positioned(
                    right: 4,
                    top: 5,
                    child: Container(
                      width: 105.w,
                      height: 95.h,
                      color: AppColors.primaryColor,
                      child: Image.asset(
                        AppAssets.nodle,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 110,
                    left: 10,
                    top: 65,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Positioned(
                    left: 13,
                    bottom:4 ,
                    right: 135,
                    child: CustomRowName(
                      name: 'James Spader',
                    ),
                  ),
                  
                ],
              )),
        ),
      ]),
    );
  }
}
