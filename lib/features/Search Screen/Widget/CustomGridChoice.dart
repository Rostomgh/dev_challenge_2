import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGridChoice extends StatelessWidget {
  final String name;
  final String descp;
  final Function()? onpress;
  const CustomGridChoice({super.key, required this.descp, required this.name, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onpress,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 105.h,
                width: AppSizes.wigridS,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.choice,
                      height: 84.h,
                      width: 100.w,
                    ),
                    const SizedBox(width: AppSizes.ten),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            descp,
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 14.w,
                                backgroundImage:
                                    const AssetImage(AppAssets.profile),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff97A2B0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(AppAssets.arrow, height: 24.h, width: 24.w),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
