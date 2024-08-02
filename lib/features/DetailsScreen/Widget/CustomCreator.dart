import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCreator extends StatelessWidget {
  final String picCreator;
  final String NCreator;
  final String Mdesc;
  const CustomCreator(
      {super.key,
      required this.picCreator,
      required this.NCreator,
      required this.Mdesc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.w,
          backgroundImage: AssetImage(picCreator),
        ),
        Column(
          children: [
            Text(
              NCreator,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(Mdesc,
                style: TextStyle(
                    color: const Color(
                      0xff48525F,
                    ),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }
}
