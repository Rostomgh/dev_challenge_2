import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomRowName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGridChoice extends StatelessWidget {
  final String descp;
  const CustomGridChoice({super.key, required this.descp});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          child: ResponsiveGridRow(children: [
            ResponsiveGridCol(
                xs: 10,
                child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.r).w,
                    ),
                    height: 100.h,
                    width: AppSizes.wigridS,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.choice,
                          height: 84.h,
                          width: 100.w,
                        ),
                        const SizedBox(
                          height: AppSizes.ten,
                        ),
                        Column(
                          children: [
                            Text(
                              descp,
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w800),
                            ),
                            const CustomRowName(
                              name: 'James Spader',
                            ),
                          ],
                        ),
                        Spacer(),
                        const Icon(
                          Icons.arrow_back,
                        )
                      ],
                    )))
          ]),
        ));
  }
}
