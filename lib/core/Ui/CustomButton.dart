import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function()? onpress;

  const CustomButton({super.key, this.onpress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      color: AppColors.buttonColor,
      minWidth: 327,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r).w,
    ),
      child: const Text(
          'Login',
        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
      ));
  }
}