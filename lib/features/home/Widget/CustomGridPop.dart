import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';


class CustomGridPop extends StatelessWidget {
  const CustomGridPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 6,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
              
              height: AppSizes.HeightGriP,
              width: AppSizes.widthGrid,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    right: 16,
                    left: 16,
                    top: 16,
                    child: Image.asset(
                      AppAssets.gridP,
                      height: 130.h,
                      width: 168.w,
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text('Healthy Taco Salad with fresh  vegetable',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: AppColors.textColor),maxLines: 2,),
                  Row(
                    children: [
                      Icon(Icons.fire_hydrant),
                      Text('120 Kcal',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: AppColors.textColor),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
